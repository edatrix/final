class PetFetcher

  def self.connect
    Petfinder.configure do |config|
      config.api_key = ENV["PETFINDER_KEY"]
      config.api_secret = ENV["PETFINDER_SECRET"]
    end

    Petfinder::Client.new
  end

  def self.found_pets(type, zipcode)
    api_pets = connect.find_pets(type, zipcode)

    api_pets.each do |pet|
      Pet.find_or_create_by(
        name: pet.name,
        description: pet.description,
        avatar_file_name: find_pet_image(pet),
        zip: find_shelter_zipcode(pet.shelter_id),
        shelter_name: find_shelter_name(pet.shelter_id),
        species_cd: set_species(type),
        status_cd: 1
        )
    end
  end

  def self.find_shelter_zipcode(shelter_id)
    connect.shelter(shelter_id).zip
  end

  def self.find_shelter_name(shelter_id)
    connect.shelter(shelter_id).name
  end

  def self.find_pet_image(pet)
    unless pet.photos.empty?
      pet.photos.first.medium
    end
  end

  def self.set_species(type)
    case type
    when "cat"
      0
    when "dog"
      1
    else
      2
    end
  end

end

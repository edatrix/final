class Shelter

  attr_reader :id, :name, :address1, :address2, :city, :state, :zip, :country,
      :latitude, :longitude, :phone, :fax, :email

  def initialize(shelter_info)
    @name = shelter_info["name"]
    @address1 = shelter_info["address1"]
    @address2 = shelter_info["address2"]
    @city = shelter_info["city"]
    @state = shelter_info["state"]
    @zip = shelter_info["zip"]
    @country = shelter_info["country"]
    @latitude = shelter_info["latitude"]
    @longitude = shelter_info["longitude"]
    @phone = shelter_info["phone"]
    @fax = shelter_info["fax"]
    @email = shelter_info["email"]
  end

end

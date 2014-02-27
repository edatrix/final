class PetsController < ApplicationController

  def index
    @pets = Pet.recent_with_image
  end

  def create
    pet = Pet.new(pet_params)
    if pet.save
      flash[:notice] = "Your pet info has been saved."
      redirect_to found_pets_path
    else
      flash[:error] = "Please fill out all fields."
      redirect_to(:back)
    end
  end

  def fetch_found_pets
    ["dog", "cat"].each do |type|
      PetFetcher.found_pets(type, "80204")
    end

    redirect_to :found
  end

  def lost
    @pets = Pet.lost
  end

  def found
    @pets = Pet.found
  end

  def destroy
    pet = Pet.find_by(id: params[:id])
    pet.destroy
    flash[:notice] = "We are happy you found your pet!"
    redirect_to root_path
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :description, :zip, :species_cd, :status_cd, :avatar)
  end

end


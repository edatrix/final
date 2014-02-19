class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def create
    pet = Pet.new(pet_params)
    pet.save
    redirect_to found_pets_path
  end

  def found
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :description, :zip, :species_cd)
  end

end

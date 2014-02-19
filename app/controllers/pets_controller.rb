class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def create
    pet = Pet.new(pet_params)
    if pet.save
      redirect_to found_pets_path
    else
      flash[:error] = "Please fill out all fields."
      redirect_to(:back)
    end
  end

  def found
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :description, :zip, :species_cd, :avatar)
  end

end


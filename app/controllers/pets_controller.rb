class PetsController < ApplicationController

  def index
    @pets = Pet.all
  end

  def create
    redirect_to found_pets_path
  end

end

class AddSpeciesToPets < ActiveRecord::Migration
  def change
    add_column :pets, :species_cd, :integer
  end
end

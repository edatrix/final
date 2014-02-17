class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.text :description
      t.integer :zip

      t.timestamps
    end
  end
end

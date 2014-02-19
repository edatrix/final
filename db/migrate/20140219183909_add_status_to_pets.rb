class AddStatusToPets < ActiveRecord::Migration
  def change
    add_column :pets, :status_cd, :integer
  end
end

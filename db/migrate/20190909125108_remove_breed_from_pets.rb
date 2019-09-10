class RemoveBreedFromPets < ActiveRecord::Migration[6.0]
  def change
    remove_index :pets, :breed_id   
    remove_column :pets, :breed_id
  end 
end

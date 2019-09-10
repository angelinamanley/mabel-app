class RemoveSpeciesAndBreedFromPets < ActiveRecord::Migration[6.0]
  def change

    remove_column :pets, :species, :string
    remove_column :pets, :breed, :string
  end
end

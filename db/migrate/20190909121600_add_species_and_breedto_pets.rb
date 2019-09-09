class AddSpeciesAndBreedtoPets < ActiveRecord::Migration[6.0]
  def change
    add_reference :pets, :species, index: true
    add_reference :pets, :breed, index: true
  end
end

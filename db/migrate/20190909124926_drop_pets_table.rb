class DropPetsTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :breeds
  end
end

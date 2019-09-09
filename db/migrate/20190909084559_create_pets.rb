class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.references :owner, null: false, foreign_key: true
      t.string :name
      t.string :breed
      t.string :gender
      t.string :bio
      t.string :pic_url
      t.date :dob

      t.timestamps
    end
  end
end

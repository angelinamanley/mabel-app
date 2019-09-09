class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :service_type
      t.string :review_content
      t.references :pet, null: false, foreign_key: true
      t.references :service_provider, null: false, foreign_key: true
      t.datetime :date
      t.integer :duration
      t.decimal :cost
      t.integer :review_score

      t.timestamps
    end
  end
end

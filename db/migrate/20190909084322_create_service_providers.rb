class CreateServiceProviders < ActiveRecord::Migration[6.0]
  def change
    create_table :service_providers do |t|
      t.string :company_name
      t.string :location
      t.string :service_types
      t.integer :rating
      t.string  :bio
      t.decimal :rates 
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end

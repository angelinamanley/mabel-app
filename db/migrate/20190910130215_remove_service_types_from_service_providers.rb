class RemoveServiceTypesFromServiceProviders < ActiveRecord::Migration[6.0]
  def change

    remove_column :service_providers, :service_types, :string
  end
end

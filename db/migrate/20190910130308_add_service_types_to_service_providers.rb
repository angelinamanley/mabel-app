class AddServiceTypesToServiceProviders < ActiveRecord::Migration[6.0]
  def change
    add_column :service_providers, :service_types, :text, array: true, default: []
  end
end


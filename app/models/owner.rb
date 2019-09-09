class Owner < ApplicationRecord
    has_many :pets 
    has_many :appointments, through: :pets 
    has_many :service_providers, through: :appointments 
end

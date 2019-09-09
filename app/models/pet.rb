class Pet < ApplicationRecord
  belongs_to :owner
  has_many :appointments 
  has_many :service_providers, through: :appointments 
end

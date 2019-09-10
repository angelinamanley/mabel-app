class Appointment < ApplicationRecord
  belongs_to :pet
  belongs_to :service_provider
end
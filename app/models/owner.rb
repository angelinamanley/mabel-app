class Owner < ApplicationRecord
    has_many :pets 
    has_many :appointments, through: :pets 
    has_many :service_providers, through: :appointments 
    has_secure_password


    validates :name, presence: true
    validates :email, presence: true, uniqueness: true 
    validates :location, presence: true
    validates :password, presence: true, confirmation: true, length: { minimum: 8}


end

class Pet < ApplicationRecord
  belongs_to :owner
  belongs_to :species
end

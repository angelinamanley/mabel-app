class Pet < ApplicationRecord
  belongs_to :owner
  belongs_to :species
  has_many :appointments

  validates :name, presence: true
  validates :gender, presence: true
  validates :bio, presence: true, length: { minimum: 20 }
  validates :species_id, presence: true
  validates :breed, presence: true
  validates :dob, presence: true
  validate :is_in_future

  def past_appointments 
    self.appointments.select {|appt| appt.date < DateTime.now}
  end

  def self.search(search) 
    if search
        Pet.all.select {|pet| pet.species_id == search}
    else   
        Pet.all
    end 
end


  def upcoming_appointments 
    self.appointments.select {|appt| appt.date > DateTime.now}
  end

  def is_in_future
    if self.dob.present? && self.dob > Date.today 
      errors.add(:dob, "cannot be in the future.")
    end
  end
   

   

end

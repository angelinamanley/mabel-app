class Pet < ApplicationRecord
  belongs_to :owner
  belongs_to :species
  has_many :appointments





  def past_appointments 
    self.appointments.select {|appt| appt.date < DateTime.now}
  end

  def upcoming_appointments 
    self.appointments.select {|appt| appt.date > DateTime.now}
  end
   

   

end

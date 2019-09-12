class Appointment < ApplicationRecord
  belongs_to :pet
  belongs_to :service_provider

  validates :service_type, presence: true 
  validate  :is_in_future 
  validate  :is_available
  validates :duration, numericality: { greater_than_or_equal_to: 1}
  validate  :is_within_a_year
  # validates :review_content, length: { minimum: 10 } 
  # validates :review_score, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 5}


  def is_within_a_year
    if self.date > DateTime.now + 1.years
      errors.add(:date, "must be in within a year of today.")
    end
  end

  def is_in_future
    if self.date.present? && self.date < Date.today 
      errors.add(:date, "must be in the future.")
    end
  end

  def end_time 
    self.date + self.duration.hours 
  end

  def is_available
    self.service_provider.appointments.each do |appt|
      if (self.date..self.end_time).overlaps?(appt.date..appt.end_time)
        errors.add(:date, "This appointment is unavailable.  Please select another time slow.")
      end
    end
  end

end 
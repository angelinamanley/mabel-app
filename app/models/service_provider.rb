class ServiceProvider < ApplicationRecord
    has_many :appointments  
    has_many :pets, through: :appointments 
    has_many :owners, through: :pets 



    def self.search(search) 
        if search
            ServiceProvider.all.select {|sp| sp.service_types.include?(search)}
        else   
            ServiceProvider.all
        end 
    end

    # def average_rating 
    #     self.appointments.map {|appt| appt.review_score}.sum/self.appointments.count
    # end

    def average_rating 
        scores = []
        if self.appointments.map {|appt| appt.review_score}.count == 0
            return 0 
        else 
            self.appointments.each {|appt| scores << appt.review_score}
            scores.sum/scores.count
        end 
    end


end

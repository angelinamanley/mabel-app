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
        # scores = []
        # if self.appointments.map {|appt| appt.review_score}.compact.count == 0 || nil 
        #     return 0
        # elsif self.appointments.map {|appt| appt.review_score}.compact.sum == 0 || nil 
        #     return 0
        # else 
        review_scores = self.appointments.map{|appt| appt.review_score}.compact
            if  review_scores.sum == 0
                return 0
            elsif review_scores.count == 0 
                return 0 
            else 
            review_scores.sum.to_i/review_scores.count.to_i
            end  
    end
end


        # elsif self.appointments.each {|appt| appt.review_score}.include?(nil)
        #     return 0 
        # # elsif self.appointments.map {|appt| appt.review_score}.sum == 0
        # #     return 0
        # else 
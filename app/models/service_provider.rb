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


end

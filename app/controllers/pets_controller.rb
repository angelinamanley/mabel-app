class PetsController < ApplicationController

    def show
        @pet = Pet.find(params[:id])

    end

    def index
        @pets = Pet.all
    end

    def new 
        @pet = Pet.new
    end

    def create 
        pet = Pet.create(pet_params)
        redirect_to pet_path(pet)
    end

    def edit 

    end

private 

    def pet_params(*args)
        params.require(:pet).permit(:name, :owner_id, :species, :breed, :dob, :gender, :bio, :pic_url)
    end
end

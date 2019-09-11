class PetsController < ApplicationController
    before_action :auth_pet_owner 
    skip_before_action :auth_pet_owner, only: [:new, :index, :show]



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
        if pet.valid?
        redirect_to pet_path(pet)
        else
            flash[:errors] = pet.errors.full_messages
            redirect_to new_pet_path
        end
    end

    def edit 
        @pet = Pet.find(params[:id])
    end

    def update
        @pet = Pet.find(params[:id])
        @pet.update(pet_params)
    redirect_to @pet
    end

    def destroy
        @pet = Pet.find(params[:id])
        @pet.destroy
    redirect_to owner_path(@current_user)
    end

private 

    def pet_params
        params.require(:pet).permit(:name, :owner_id, :species_id, :breed, :dob, :gender, :bio, :pic_url)
    end

    def auth_pet_owner
        pet = Pet.find(params[:id].to_i)
        return head(:forbidden) unless pet.owner.id == session[:owner_id] 
    end 
    
end

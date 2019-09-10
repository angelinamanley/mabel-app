class OwnersController < ApplicationController
     

    def new 
        @owner = Owner.new
    end

    def create 
        owner = Owner.create(owner_params)
        session[:owner_id] = owner.id
        redirect_to owner_path(owner)
    end


    def show
        @owner = Owner.find(params[:id])

    end

    def index
        @owners = Owner.all
    end


    private 

    def owner_params 
        params.require(:owner).permit(:name, :email, :password, :password_confirmation, :location)
    end

end

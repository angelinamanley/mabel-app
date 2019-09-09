class OwnersController < ApplicationController
    has_secure_password 

     validates :email, presence: true, uniqueness: true 

    def new 
        @owner = Owner.new
    end

    def create 
        owner = Owner.create(owner_params)
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

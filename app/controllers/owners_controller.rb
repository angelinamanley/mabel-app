class OwnersController < ApplicationController
     before_action :auth_pet_owner 
     skip_before_action :auth_pet_owner, only: [:new, :index, :show, :create]

    def new 
        @owner = Owner.new
    end

    def create 
        owner = Owner.create(owner_params)
        if owner.valid?
            session[:owner_id] = owner.id
            redirect_to owner_path(owner)
        else
            flash[:errors] = owner.errors.full_messages
        redirect_to signup_path
        end
    end

    def show
        @owner = Owner.find(params[:id])
    end

    def index
        @owners = Owner.all
    end

    def edit 
        @owner = Owner.find(params[:id])
    end

    def update
        @owner = Owner.find(params[:id])
        @owner.update(owner_params)
        redirect_to owner_path(@owner)
    end


    def destroy
        @owner = Owner.find(params[:id])
        @owner.destroy
    redirect_to welcome_path
    end


    def destroy_session_account
        @owner = Owner.find(params[:id])
        reset_session
        @owner.destroy
        redirect_to welcome_path
    end

    private 

    def owner_params 
        params.require(:owner).permit(:name, :email, :password, :password_confirmation, :location)
    end

    def auth_pet_owner
    return head(:forbidden) unless session[:owner_id] == params[:id].to_i
      end



end

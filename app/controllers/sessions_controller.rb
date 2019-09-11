class SessionsController < ApplicationController
    def new
    end
  
    def create
      owner = Owner.find_by(email: params[:email])
      if owner && owner.authenticate(params[:password])
        session[:owner_id] = owner.id
        redirect_to owner_path(owner)
      else
        flash[:errors] = ["Those credentials don't work"]
        redirect_to login_path
      end
    end
  
    def destroy
      session.delete(:owner_id)
      redirect_to welcome_path
    #   redirect_back(fallback_location: login_path)
    end

  end
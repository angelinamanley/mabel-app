class ApplicationController < ActionController::Base

    before_action :set_current_owner

    helper_method :logged_in?

    def set_current_owner
        @current_owner = session[:owner_id] ? Owner.find(session[:owner_id]) : nil
    end

    def logged_in?
        !!@current_owner
    end

    def authorize_owner
        if !logged_in?
            flash[:notices] = ["You must be logged in to view that page"]
            redirect_to login_path
        end
    end
end


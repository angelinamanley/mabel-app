class AppointmentsController < ApplicationController

    def show
        @appointment = Appointment.find(params[:id])

    end

    def index
        @appointments = Appointment.all
    end

    def new 
        @appointment = Appointment.new
        @service_provider = session[:service_provider]
        byebug
    end


end

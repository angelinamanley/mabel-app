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
    end

    def create
        appointment = Appointment.create(appointment_params)
        redirect_to appointment_path(appointment)
    end

    private

    def appointment_params
        params.require(:appointment).permit(:service_type, :review_content, :pet_id, :service_provider_id, :date, :duration, :cost, :review_score)
    end

end

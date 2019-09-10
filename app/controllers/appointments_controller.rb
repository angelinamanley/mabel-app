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

    def edit 
        @appointment = Appointment.find(params[:id])
    end

    def update 
        @appointment = Appointment.find(params[:id])
        @appointment.update(appointment_params)
        redirect_to appointment_path(@appointment)
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
    redirect_to owner_path(@current_user)
    end

    def review_form 
        @appointment = Appointment.find(params[:id])
    end

    def create_review
        appointment = Appointment.find(params[:appointment_id])
        appointment.update(review_score: params[:review_score], review_content: params[:review_content])
        redirect_to appointment_path(appointment)
    end

    private

    def appointment_params
        params.require(:appointment).permit(:service_type, :review_content, :pet_id, :service_provider_id, :date, :duration, :cost, :review_score)
    end

end

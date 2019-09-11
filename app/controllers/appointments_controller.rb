class AppointmentsController < ApplicationController

    before_action :auth_pet_owner
    skip_before_action :auth_pet_owner, only: [:new]


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
        if appointment.valid? 
            redirect_to appointment_path(appointment)
        else
            flash[:errors] = appointment.errors.full_messages
            redirect_to new_appointment_path 
        end
    end 

    def edit 
        @appointment = Appointment.find(params[:id])
    end

    def update 
        @appointment = Appointment.find(params[:id])
        @appointment.update(appointment_params)
        if @appointment.valid? 
            redirect_to appointment_path(@appointment)
        else
            flash[:errors] = @appointment.errors.full_messages
            redirect_to edit_appointment_path(@appointment) 
        end 
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

    def auth_pet_owner
        appointment = Appointment.find(params[:id].to_i)
        return head(:forbidden) unless appointment.pet.owner_id == session[:owner_id] 
    end 

end

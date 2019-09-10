class ServiceProvidersController < ApplicationController

    def show
        @service_provider = ServiceProvider.find(params[:id])
        session[:service_provider_id] = @service_provider.id
        session[:service_provider] = @service_provider
    end

    def index
        @service_types = ['sitting', 'walking', 'grooming', 'training', 'healthcare']
        @service_providers = ServiceProvider.search(params[:search])
    end

private 

    def service_provider_params 
        params.require(:service_provider).permit(:company_name, :location, :service_types, :rating, :bio, :rates, :password_digest, :email, :search)
    end


end

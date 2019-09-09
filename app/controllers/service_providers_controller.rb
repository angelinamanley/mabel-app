class ServiceProvidersController < ApplicationController

    def show
        @service_provider = ServiceProvider.find(params[:id])

    end

    def index
        @service_providers = ServiceProvider.all
    end


end

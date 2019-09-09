class PetsController < ApplicationController

    def show
        @pet = Pet.find(params[:id])

    end

    def index
        @pets = Pet.all
    end


end

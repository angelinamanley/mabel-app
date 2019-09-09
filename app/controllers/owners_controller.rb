class OwnersController < ApplicationController

    def show
        @owner = Owner.find(params[:id])

    end

    def index
        @owners = Owner.all
    end

end

class SuppliesController < ApplicationController

    def index
        @supplies = Supplies.all
        render json: @supplies
    end

    def show
        @supply = Supply.find(params[:id])
        render json: @supply.to_json
    end


end

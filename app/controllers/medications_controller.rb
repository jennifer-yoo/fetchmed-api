class MedicationsController < ApplicationController

    def index
        @medications = Medication.all
        render json: @medications
    end

    def show
        @medication = Medication.find(params[:id])
        render json: @medication.to_json
    end



end

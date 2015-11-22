class CalculationsController < ApplicationController
  before_action :set_calculation, only: [:index,:show]

  # GET /calculations
  # GET /calculations.json
  def index
    @calculation = Calculation.new
  end
  def show
    @calculation = Calculation.new
    fuel=params[:calculation][:fuel].to_i
    distance=params[:calculation][:distance].to_i
    @units="#{ params[:calculation][:region].to_i == 0 ? "liters per km" : "miles per gallon" }"
    if distance>0 and (fuel/distance)>0
      @consumption = fuel/distance
    else
      redirect_to "/"
    end
  end
  # PATCH/PUT /calculations/1
  # PATCH/PUT /calculations/1.json

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calculation
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calculation_params
      params[:calculation]
    end
end

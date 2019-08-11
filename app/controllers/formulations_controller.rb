class FormulationsController < ApplicationController
  def index
    @formulations = Formulation.all
  
    render json: @formulations.to_json(:include => :ingredients)
  end

  def show
    @formulation = Formulation.find(params[:id])
  
    render json: @formulation.to_json(:include => :ingredients)
  end
end

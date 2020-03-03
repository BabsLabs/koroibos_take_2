class Api::V1::MedalistsController < ApplicationController

  def index
    render json: EventMedalistsFacade.medalists(params[:id])
  end

end
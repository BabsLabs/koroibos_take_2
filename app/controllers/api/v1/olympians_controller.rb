class Api::V1::OlympiansController < ApplicationController

  def index
    if params[:age]
      params[:age].downcase
      if params[:age] == 'youngest'
        render json: { olympians: [YoungestOlympianFacade.olympian] }
      end
    else
      render json: { olympians: OlympianFacade.olympians }
    end
  end

end
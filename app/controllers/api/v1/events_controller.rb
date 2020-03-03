class Api::V1::EventsController < ApplicationController

  def index
    render json: { events: EventsFacade.events }
  end

end
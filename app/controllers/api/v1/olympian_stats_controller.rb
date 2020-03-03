class Api::V1::OlympianStatsController < ApplicationController

  def index
    render json: { olympian_stats: OlympianStatsPoro.new }
  end

end
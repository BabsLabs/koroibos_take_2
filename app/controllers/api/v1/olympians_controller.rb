class Api::V1::OlympiansController < ApplicationController

  def index
    olympians = Olympian.all
    olympian_poros = olympians.map do |olympian|
      OlympianPORO.new(olympian)
    end
    render json: {olympians: olympian_poros}
  end

end
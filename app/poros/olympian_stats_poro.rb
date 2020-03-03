class OlympianStatsPoro

  def initialize
    @total_competing_olympians = Olympian.count
    @average_weight = WeightPORO.new
    @average_age = Olympian.average(:age).round(1)
  end

end
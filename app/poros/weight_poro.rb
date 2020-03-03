class WeightPORO

  def initialize
    @unit = 'kg'
    @male_olympians = Olympian.where(sex: :M).average(:weight).round(1)
    @female_olympians = Olympian.where(sex: :F).average(:weight).round(1)
  end

end
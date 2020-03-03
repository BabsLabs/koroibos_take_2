class OlympianPORO

  def initialize(olympian_info)
    @name = olympian_info.name
    @team = olympian_info.team
    @age = olympian_info.age
    @sport = olympian_info.sport.sport
    @total_medals_won = olympian_info.medals.count
  end

end
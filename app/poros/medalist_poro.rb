class MedalistPORO
  attr_reader :medal

  def initialize(medalist_info)
    @name = medalist_info.olympian.name
    @team = medalist_info.olympian.team
    @age = medalist_info.olympian.age
    @medal = medalist_info.medal
  end

end
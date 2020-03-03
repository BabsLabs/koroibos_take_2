class EventMedalistPORO

  def initialize(event_info)
    @event = event_info.event
    @medalists = medalists(event_info)
  end

  def medalists(event_info)
    olympic_medalists = event_info.medals.map do |medalist|
      MedalistPORO.new(medalist)
    end

    proper_order = ["Gold", "Silver", "Bronze"]

    olympic_medalists.sort_by do |medalist|
      proper_order.index medalist.medal
    end
  end

end
class EventPORO

  def initialize(sport)
    @sport = sport.sport
    @events = events(sport)
  end

  def events(sport)
    sport.events.map do |event|
      event.event
    end.sort
  end

end
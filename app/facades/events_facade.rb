class EventsFacade

  def self.events
    sports = Sport.all.order(:sport)
    sports.map do |sport|
      EventPORO.new(sport)
    end
  end
end
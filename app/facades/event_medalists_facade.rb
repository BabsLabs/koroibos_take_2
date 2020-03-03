class EventMedalistsFacade

  def self.medalists(id)
    begin
      event = Event.find(id)
      EventMedalistPORO.new(event)
    rescue
      "error: No event with that id found. Please try again.".to_json
    end
  end

end
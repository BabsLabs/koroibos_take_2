class OldestOlympianFacade

  def self.olympian
    oldest_olympian = Olympian.order(age: :desc).first
    OlympianPORO.new(oldest_olympian)
  end

end
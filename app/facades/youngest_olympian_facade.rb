class YoungestOlympianFacade

  def self.olympian
    youngest_olympian = Olympian.order(:age).first
    OlympianPORO.new(youngest_olympian)
  end

end
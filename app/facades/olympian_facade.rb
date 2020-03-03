class OlympianFacade

  def self.olympians
    olympians = Olympian.all
    olympians.map do |olympian|
      OlympianPORO.new(olympian)
    end
  end

end
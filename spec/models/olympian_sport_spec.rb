require "rails_helper"

describe OlympianSport do
  describe "realtionships" do
    it { should belong_to :sport }
    it { should belong_to :olympian }
  end

  describe "validations" do
    it { should validate_presence_of :olympian_id }
    it { should validate_presence_of :sport_id }
  end
end
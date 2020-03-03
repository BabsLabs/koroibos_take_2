require "rails_helper"

describe Event do
  describe "realtionships" do
    it { should have_many :medals }
    it { should have_many :olympian_events }
    it { should have_many :olympians }
  end

  describe "validations" do
    it { should validate_presence_of :event }
    it { should validate_presence_of :games }
    it { should validate_presence_of :sport_id }
  end
end
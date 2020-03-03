require "rails_helper"

describe Sport do
  describe "realtionships" do
    it { should have_many :olympian_sports }
    it { should have_many :events }
  end

  describe "validations" do
    it { should validate_presence_of :sport }
  end
end
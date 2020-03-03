require "rails_helper"

describe Olympian do
  describe "realtionships" do
    it { should have_many :medals }
    it { should have_many :olympian_events }
    it { should have_many :events }
  end

  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_presence_of :sex }
    it { should validate_presence_of :age }
    it { should validate_presence_of :height }
    it { should validate_presence_of :weight }
    it { should validate_presence_of :team }
  end
end
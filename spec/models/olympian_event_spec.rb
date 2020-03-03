require "rails_helper"

describe OlympianEvent do
  describe "realtionships" do
    it { should belong_to :event }
    it { should belong_to :olympian }
  end

  describe "validations" do
    it { should validate_presence_of :olympian_id }
    it { should validate_presence_of :event_id }
  end
end
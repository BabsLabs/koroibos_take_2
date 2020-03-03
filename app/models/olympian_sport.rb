class OlympianSport < ApplicationRecord
  belongs_to :olympian
  belongs_to :sport

  validates_presence_of :olympian_id,
                          :sport_id
end
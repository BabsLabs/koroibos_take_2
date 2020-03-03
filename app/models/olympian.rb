class Olympian < ApplicationRecord
  has_many :medals
  has_many :olympian_events
  has_many :events, through: :olympian_events
  has_many :olympian_sports
  has_many :sports, through: :olympian_sports

  validates_presence_of :name,
                        :sex,
                        :age ,
                        :height,
                        :weight,
                        :team
end
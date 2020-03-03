class Olympian < ApplicationRecord
  has_many :medals
  has_many :olympian_events
  has_many :events, through: :olympian_events
  belongs_to :sport

  validates_presence_of :name,
                        :sex,
                        :age ,
                        :height,
                        :weight,
                        :team
end
class Sport < ApplicationRecord
  has_many :events
  has_many :olympians

  validates_presence_of :sport
end
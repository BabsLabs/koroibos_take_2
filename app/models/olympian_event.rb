class OlympianEvent < ApplicationRecord
  belongs_to :olympian
  belongs_to :event

  validates_presence_of :olympian_id,
                        :event_id
end
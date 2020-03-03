class Medal < ApplicationRecord
  belongs_to :olympian
  belongs_to :event

  validates_presence_of :medal,
                        :olympian_id,
                        :event_id
end
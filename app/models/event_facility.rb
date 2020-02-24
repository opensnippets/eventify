class EventFacility < ApplicationRecord
	belongs_to :event
	belongs_to :facility
end

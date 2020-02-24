class Facility < ApplicationRecord
	belongs_to :venue
	#has_many :event_facilities
  	#has_many :events, :through => :event_facilities 
end

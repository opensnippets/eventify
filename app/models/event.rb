#require 'Geocoder'

class Event < ApplicationRecord
  #attr_accessor :location, :latitude, :longitude
  geocoded_by :location
  #after_validation :geocode, :if => :address_changed?
  #geocoded_by :location
  #geocoded_by :find_lat_lang_from_location, latitude: :lat, longitude: :lon
	enum payment: ["free", "paid", "donation"]

	belongs_to :user
	has_many :event_registrations

  has_many :event_facilities
  has_many :facilities, :through => :event_facilities 

	has_attached_file :event_poster, styles: { medium: "300x500#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :event_poster, content_type: /\Aimage\/.*\z/

  #reverse_geocoded_by :latitude, :longitude
  after_validation :geocode, if: :location_changed?

  

end

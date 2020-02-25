class Venue < ApplicationRecord
	has_one :facility
	accepts_nested_attributes_for :facility
	has_one :venue_address
	accepts_nested_attributes_for :venue_address

	has_many :venue_images
	has_many :albums#, through: :venue_images

	has_many :venue_registrations
  has_many :users, through: :venue_registrations

  has_many :reviews, as: :reviewable
  
  has_many :foods
  accepts_nested_attributes_for :foods
end

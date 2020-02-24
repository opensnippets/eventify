class Album < ApplicationRecord
  belongs_to :venue
  has_many :venue_images

  accepts_nested_attributes_for :venue_images
end

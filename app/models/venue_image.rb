class VenueImage < ApplicationRecord
  has_attached_file :venue_profile, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :venue_profile, content_type: /\Aimage\/.*\z/
  
  belongs_to :album
end

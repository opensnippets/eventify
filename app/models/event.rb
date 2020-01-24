class Event < ApplicationRecord
	enum payment: ["free", "paid", "donation"]
	belongs_to :user
	has_many :event_registrations

	has_attached_file :event_poster, styles: { medium: "300x500#", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :event_poster, content_type: /\Aimage\/.*\z/
end

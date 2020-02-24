class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  has_many :events
  has_many :event_registrations
  has_many :venues

  has_many :venue_registrations
  has_many :venues, through: :venue_registrations
end

class Vine < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :description, presence: true
  validates :variety, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :picture, presence: true
  mount_uploader :picture, PhotoUploader
end

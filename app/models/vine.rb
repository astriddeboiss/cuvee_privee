class Vine < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :color, presence: true
  validates :description, presence: true
  validates :variety, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :picture, presence: true
  mount_uploader :picture, PhotoUploader
  geocoded_by :location
  after_validation :geocode

  def self.prices
    Vine.pluck(:price).uniq
  end

  def self.varieties
    Vine.pluck(:variety).uniq
  end
end

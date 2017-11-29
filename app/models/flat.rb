class Flat < ApplicationRecord
  geocoded_by :full_adress
  after_validation :geocode, if: :address_changed?
  mount_uploader :photo, PhotoUploader

  belongs_to :profile #when a user is the owner of a flat
  has_many :reviews
  has_many :rents
  has_many :flat_options
  has_many :features, through: :flat_options

  def full_adress
    "#{address} #{post_code} #{city}"
  end


end

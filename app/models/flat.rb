class Flat < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_attachment :photo

  belongs_to :profile #when a user is the owner of a flat
  has_many :reviews
  has_many :rents
  has_many :flat_options
  has_many :features, through: :flat_options
end

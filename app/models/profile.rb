class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_attachment :photo

  belongs_to :user
  has_many :flats
  has_many :reviews
  has_many :rents
end

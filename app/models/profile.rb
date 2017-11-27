class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_attachment :photo

  belongs_to :user
end

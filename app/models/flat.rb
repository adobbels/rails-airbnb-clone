class Flat < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_attachment :photo


end

class Profile < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :user
  has_many :flats
  has_many :reviews
  has_many :rents

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :post_code, presence: true
  validates :phone_number, presence: true
  validates :sex, presence: true
  validates :birth_date, presence: true


end

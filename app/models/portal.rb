class Portal < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :cover_photo
  has_many_attached :photos
end

class Portal < ApplicationRecord
  belongs_to :user
  has_one_attached :cover_photo
  has_many_attached :photos
end

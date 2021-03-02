class Booking < ApplicationRecord
  belongs_to :portal
  belongs_to :user
end

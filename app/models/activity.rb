class Activity < ApplicationRecord
  has_many :dayplanners
  has_many :polterabends

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def photo_url
    return photo if photo.present?
    'placeholder.jpg'
  end

end

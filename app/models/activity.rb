class Activity < ApplicationRecord

  has_many :activity_dayplanners
  has_many :activity_polterabends
  has_many :favourites


  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def photo_url
    return photo if photo.present?
    'placeholder.jpg'
  end


end

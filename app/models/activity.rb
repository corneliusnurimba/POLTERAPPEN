class Activity < ApplicationRecord
  # include Filterable

  has_many :activity_dayplanners, :dependent => :destroy
  has_many :activity_polterabends, :dependent => :destroy
  has_many :favourites, :dependent => :destroy


  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  monetize :price_Øres

  def photo_url
    return photo if photo.present?
    'placeholder.jpg'
  end


end

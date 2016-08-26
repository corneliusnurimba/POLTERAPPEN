class Activity < ApplicationRecord

  has_many :activity_dayplanners, :dependent => :delete_all
  has_many :activity_polterabends, :dependent => :delete_all
  has_many :favourites, :dependent => :delete_all


  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  def photo_url
    return photo if photo.present?
    'placeholder.jpg'
  end


end

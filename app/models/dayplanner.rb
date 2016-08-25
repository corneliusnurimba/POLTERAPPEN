class Dayplanner < ApplicationRecord
  belongs_to :polterabend
  has_many :activities

  def photo_url
    return photo if photo.present?
    'placeholder.jpg'
  end

end

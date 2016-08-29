
class Polterabend < ApplicationRecord
  validates :title, presence: true

  has_many :memberships, :dependent => :delete_all
  has_one :dayplanner, :dependent => :delete
  has_many :activity_polterabend, :dependent => :destroy
  has_many :comments, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  def photo_url
    return photo.url(:standard) if photo.present?
    'placeholder.jpg'
  end

end

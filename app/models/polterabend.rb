class Polterabend < ApplicationRecord
  validates :title, presence: true

  has_many :memberships
  has_one :dayplanner
  belongs_to :activity_polterabend

  mount_uploader :photo, PhotoUploader

end

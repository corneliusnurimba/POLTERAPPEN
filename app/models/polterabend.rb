
class Polterabend < ApplicationRecord
  validates :title, presence: true

  has_many :memberships, :dependent => :delete_all
  has_one :dayplanner, :dependent => :delete
  has_many :activity_polterabends, :dependent => :destroy
  has_many :comments, dependent: :destroy

  mount_uploader :photo, PhotoUploader


end

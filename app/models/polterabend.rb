class Polterabend < ApplicationRecord
  has_many :memberships
  has_one :dayplanner
  belongs_to :activity_polterabend
end

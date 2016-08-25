class Polterabend < ApplicationRecord
  has_many :activities
  has_many :memberships
end

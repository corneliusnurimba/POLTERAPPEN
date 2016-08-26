
class Membership < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  belongs_to :polterabend
end

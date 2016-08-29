class ActivityPolterabend < ApplicationRecord
  has_many :upvotes
  belongs_to :activity
  belongs_to :polterabend
end

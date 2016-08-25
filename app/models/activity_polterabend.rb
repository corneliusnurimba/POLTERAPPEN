class ActivityPolterabend < ApplicationRecord
  has_many :upvotes
  belongs_to :activity, :dependent => :destroy
  belongs_to :polterabend, :dependent => :destroy
end

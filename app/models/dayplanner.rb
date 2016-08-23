class Dayplanner < ApplicationRecord
  belongs_to :polterabend
  has_many :activities
end

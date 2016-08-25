class Dayplanner < ApplicationRecord
  belongs_to :polterabend
  has_many :activity_dayplanners
end

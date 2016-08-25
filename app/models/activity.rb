class Activity < ApplicationRecord
  has_many :activity_dayplanners
  has_many :activity_polterabends
  has_many :favourites
end

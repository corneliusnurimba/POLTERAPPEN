class Polterabend < ApplicationRecord
  has_many :activities
  has_many :users
end

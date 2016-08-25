class ActivityDayplanner < ApplicationRecord
  belongs_to :activity, :dependent => :delete
  belongs_to :dayplanner, :dependent => :delete
end

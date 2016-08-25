class ActivityDayplannersController < ApplicationController

  def show
    @a_dayplanner = ActivityDayplanner.find(params[:id])
    @activity = Activity.find(@a_dayplanner.activity_id)
  end
end

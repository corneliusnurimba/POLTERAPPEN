class ActivityPolterabendsController < ApplicationController

  def show
    @a_polterabend = ActivityPolterabend.find(params[:id])
    @activity = Activity.find(@a_polterabend.activity_id)
  end

end

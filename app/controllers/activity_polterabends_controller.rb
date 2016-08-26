require 'json'

class ActivityPolterabendsController < ApplicationController

  def show
    @a_polterabend = ActivityPolterabend.find(params[:id])
    @activity = Activity.find(@a_polterabend.activity_id)
  end

  def save_activities
    activities = JSON.parse(params) # => converts json to ruby hash
    polterabend_id = activities[:polterabend_id]
    render :json => activities[polterabend_id]


    # activities[:polterabend_id].each do |activity_id|
    #   activity_polterabends.build(polterabend_id: polterabend_id, activity_id: activity_id)
    # end
  end

  private

  def activity_polterabend_params
    params.require(:activity_polterabend).permit(:polterabend_id)
  end

end


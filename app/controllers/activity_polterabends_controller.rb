require 'json'

class ActivityPolterabendsController < ApplicationController

  def show
    @a_polterabend = ActivityPolterabend.find(params[:id])
    @activity = Activity.find(@a_polterabend.activity_id)
  end

  def save_activities

    # activities = JSON.parse(params) # => converts json to ruby hash
    $stderr.puts('================================================')
    $stderr.puts('polterabend_id: '+params[:polterabend_id])
    $stderr.puts('activity_ids: '+params[:activity_ids].inspect)
    $stderr.puts('================================================')
    polterabend_id = params[:polterabend_id]
    params[:activity_ids].each do |activity_id|
      ActivityPolterabend.create( total_upvotes: 0,
                                  polterabend_id: polterabend_id,
                                  activity_id: activity_id
                                  ).save
    end
    render :json => params


    # activities[:polterabend_id].each do |activity_id|
    #   activity_polterabends.build(polterabend_id: polterabend_id, activity_id: activity_id)
    # end
  end

  private

  def activity_polterabend_params
    params.require(:activity_polterabend).permit(:polterabend_id)
  end

end


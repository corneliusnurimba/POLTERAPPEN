class ActivityPolterabendsController < ApplicationController

  def show
    @a_polterabend = ActivityPolterabend.find(params[:id])
    @activity = Activity.find(@a_polterabend.activity_id)
  end

  def save_activity
    ActivityPolterabend.create(
      polterabend_id: params[:save_activity][:polterabend_id],
      activity_id: params[:save_activity][:activity_id])
    redirect_to activity_path(params[:save_activity][:activity_id])
  end

  def save_activities
    polterabend_id = params[:polterabend_id]
    params[:activity_ids].each do |activity_id|
      ActivityPolterabend.create(total_upvotes: 0,
                                 polterabend_id: polterabend_id,
                                 activity_id: activity_id
                                ).save
    end
    render :json => params
  end

  private

  def activity_polterabend_params
    params.require(:activity_polterabend).permit(:polterabend_id)
  end

end


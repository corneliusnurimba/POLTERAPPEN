class ActivityDayplannersController < ApplicationController

  def show
    @a_dayplanner = ActivityDayplanner.find(params[:id])
    @activity = Activity.find(@a_dayplanner.activity_id)
  end

  def save_dayplanners

  # activities = JSON.parse(params) # => converts json to ruby hash
  # $stderr.puts('================================================')
  # $stderr.puts('polterabend_id: '+params[:polterabend_id])
  # $stderr.puts('activity_ids: '+params[:activity_ids].inspect)
  # $stderr.puts('================================================')
  dayplanner_id = params[:dayplanner_id]
  params[:activity_ids].each do |activity_id|
    ActivityDayplanner.create(  dayplanner_id: dayplanner_id,
                                activity_id: activity_id
                                ).save
  end
  render :json => params


  # activities[:polterabend_id].each do |activity_id|
  #   activity_polterabends.build(polterabend_id: polterabend_id, activity_id: activity_id)
  # end
end

  private

  def activity_dayplanner_params
    params.require(:activity_dayplanner).permit(:dayplanner_id)
  end

end

class DayplannersController < ApplicationController

  def index
    @activities = Activity.all
    @dayplanners = Dayplanner.all
  end

  def save_pa_acts
    dayplanner_id = params[:dayplanner_id]
    clear_plans dayplanner_id
    params[:activity_ids].each do |activity_id|
      ActivityDayplanner.create(dayplanner_id: dayplanner_id,
                                activity_id: activity_id
                                ).save
      # todo: need to add begin and end to ActivityDayplanner model
      #       pulled from the time fields on the show page
    end if params[:activity_ids]
    make_show_attributes
    render :show 
  end

  def show
    make_show_attributes
  end

  def edit
    @dayplanner = Dayplanner.find(params[:id])
  end

  def update
    @dayplanner = Dayplanner.find(params[:id])
    @dayplanner.update(dayplanner_params)
    if @dayplanner.save
      redirect_to dayplanner_path(@dayplanner)
    else
      @errors = @dayplanner.errors.full_messages
      render :edit
    end
  end

  def destroy
    @dayplanner = Dayplanner.find(params[:id])
    @dayplanner.destroy
    redirect_to dayplanners_path
  end


  private

  def clear_plans dayplan_id
    ActivityDayplanner.where(dayplanner_id: dayplan_id).each do |adp|
      adp.delete
    end
  end 

  def make_show_attributes
    @dayplanner = Dayplanner.find(params[:id] ? params[:id] : params[:dayplanner_id])
    @polterabend = Polterabend.find_by_id(@dayplanner.polterabend_id)    
    @planned_activities = ActivityDayplanner.where(dayplanner_id: @dayplanner.id)
    if @planned_activities.empty?
      @plans = []
    else 
      @plans = @planned_activities.map do |p|
        Activity.find(p.activity_id) if p.activity_id
        # todo: when the begin and end times are added to the
        # ActivityDayplanner model, add these to the list:
        #   [Activity.find(p.activity_id), begins, ends]
        # order @plans according to the start time:
        #   @plans[i][3] is the element to use
        # and access them in the view to assign the time slots.
        # It's not a huge job to do but it does require some thought.
      end
    end
    @activities = Activity.all - @plans
  end

  def dayplanner_params
    params.require(:dayplanner).permit(:datetime, :polterabend_id)
  end

end

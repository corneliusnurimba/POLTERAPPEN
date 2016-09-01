class PolterabendsController < ApplicationController

  def index
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

    @polterabend = Polterabend.find_by_id(params[:id])
    @pacts = ActivityPolterabend.where(polterabend_id: @polterabend.id)
    @pacts_and_acts = []
    @pacts.each do |p|
      @pacts_and_acts << [p, Activity.find(p.activity_id)]
    end
    @membership = Membership.where(polterabend_id: @polterabend.id)
    @members = []
    @membership.each do |m|
      @members << User.find(m.user_id)
    end
    @dayplanner = Dayplanner.where(polterabend_id: @polterabend.id).first

    @comment = Comment.new

    # activities = Activity.where.not(latitude: nil, longitude: nil)
    activities = @pacts_and_acts
    @hash = Gmaps4rails.build_markers(activities) do |activity_polterabend, marker|
      marker.lat activity_polterabend[1].latitude
      marker.lng activity_polterabend[1].longitude
    end

    make_show_attributes
  end

  def new
    @polterabend = Polterabend.new
  end

  def create
    @polterabend = Polterabend.new(polterabend_params)

    if @polterabend.save
      @dayplanner = Dayplanner.new(polterabend_id: @polterabend.id).save
      @membership = Membership.new(user_id: current_user.id, polterabend_id: @polterabend.id, organiser: true).save
      redirect_to polterabend_path(@polterabend)
    else
      @errors = @polterabend.errors.full_messages
      render :new
    end
  end

  def edit
    @polterabend = Polterabend.find(params[:id])
  end

  def update
    @polterabend = Polterabend.find(params[:id])
    @polterabend.update(polterabend_params)
    if @polterabend.save
      redirect_to polterabend_path(@polterabend)
    else
      @errors = @polterabend.errors.full_messages
      render :edit
    end
  end

  def destroy
    @polterabend = Polterabend.find(params[:id])
    @polterabend.destroy
    redirect_to polterabends_path
  end

  private

  def polterabend_params
    params.require(:polterabend).permit(:title, :photo, :photo_cache)
  end

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

end



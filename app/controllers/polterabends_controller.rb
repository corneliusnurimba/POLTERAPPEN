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

  def make_show_attributes
    @polterabend = Polterabend.find(
      params[:polterabend_id] ? params[:polterabend_id] : params[:id]
      )
    @dayplanner = Dayplanner.find(@polterabend.id)
    planned_activities = ActivityDayplanner.where(dayplanner_id: @dayplanner.id)
    if planned_activities.empty?
      @plans = []
    else
      @plans = planned_activities.map do |p|
        Activity.find(p.activity_id) if p.activity_id
      end
    end
    @activities = Activity.all - @plans
  end

  def show
    @polterabend = Polterabend.find(params[:id])
    make_show_attributes
    pacts = ActivityPolterabend.where(polterabend_id: @polterabend.id)
    @pacts_and_acts = pacts.map {|p| [p, Activity.find(p.activity_id)]}
    @pacts_and_acts.delete_if do |p_a|
      @plans.any?{|p| p_a[1].id == p.id }
    end
    @membership = Membership.where(polterabend_id: @polterabend.id)
    @members = []
    @membership.each do |m|
      @members << User.find(m.user_id)
    end


    @comment = Comment.new
    # activities = Activity.where.not(latitude: nil, longitude: nil)
    activities = @plans
    @hash = Gmaps4rails.build_markers(activities) do |activity_dayplanner, marker|
      marker.lat activity_dayplanner.latitude
      marker.lng activity_dayplanner.longitude
    end
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
    params.require(:polterabend).permit(:title, :datetime, :photo, :photo_cache)
  end

  def clear_plans dayplan_id
    ActivityDayplanner.where(dayplanner_id: dayplan_id).each do |adp|
      adp.delete
    end
  end

<<<<<<< 50e530dbd637efb65dc67bde0bcfb72350fa85f4
=======
  def make_show_attributes
    @polterabend = Polterabend.find(
      params[:polterabend_id] ? params[:polterabend_id] : params[:id]
      )
    @dayplanner = Dayplanner.where(polterabend_id: @polterabend.id).first
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
>>>>>>> beautiful dashboard

end



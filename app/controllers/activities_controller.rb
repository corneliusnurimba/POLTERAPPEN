class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all

    activities = Activity.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(activities) do |activity, marker|
      marker.lat activity.latitude
      marker.lng activity.longitude
    end
    @selected_activities = []
    pa_id = current_user.membership.polterabend_id
    ActivityPolterabend.where(polterabend_id: pa_id).each do |a_pa|
      @selected_activities << a_pa.activity_id
    end
  end

  def show
    @activity = Activity.find(params[:id])
    pa_id = current_user.membership.polterabend_id
    @selected = ActivityPolterabend.where(polterabend_id: pa_id).any? do |a_pa|
      a_pa.activity_id == @activity.id
    end
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      @activity.update(category: 'custom')
      redirect_to activity_path(@activity)
    else
      @errors = @activity.errors.full_messages
      render :new
    end
  end

  def filtered_activities
     @params = params
     categories = %w(girly sexy crazy gothic)
     categories = categories.select { |category| params.has_key?(category) }
     @filtered_activities = Activity.all.select do |activity|
       categories.include?(activity.category)
     end
     render :index
  end

  private

  def activity_params
     params.require(:activity).permit(:category, :cost, :price_Øres, :name, :description, :duration)
  end

end


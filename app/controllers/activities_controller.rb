class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all

    activities = Activity.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(activities) do |activity, marker|
      marker.lat activity.latitude
      marker.lng activity.longitude
      # marker.infowindow render_to_string(partial: "/barbers/map_box", locals: { barber: barber })
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to activity_path(@activity)
    else
      @errors = @activity.errors.full_messages
      render :new
    end
  end

  private

  def activity_params
     params.require(:activity).permit(:name, :description, :duration)
  end
end


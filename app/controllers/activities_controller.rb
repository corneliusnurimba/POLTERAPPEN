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
    @barber = Activity.find(params[:id])
  end

  private

  # def barber_params
  #   params.require(:barber).permit(:name, :address, :email, :city, :phone_number, :photo, :photo_cache)
  # end

end

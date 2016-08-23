class ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def show
    @barber = Activity.find(params[:id])
  end

  private

  # def barber_params
  #   params.require(:barber).permit(:name, :address, :email, :city, :phone_number, :photo, :photo_cache)
  # end

end

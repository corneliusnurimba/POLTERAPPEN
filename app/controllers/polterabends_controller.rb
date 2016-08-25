class PolterabendsController < ApplicationController

  def index
  end

  def show
    # @barber = Barber.find(params[:id])
    # @booking = @barber.bookings.build
    # @alert_message = "You are viewing #{@barber.name}"
    # @barber_coordinates = { lat: @barber.latitude, lng: @barber.longitude }
  end

  def new
    @polterabend = Polterabend.new
  end

  def create
    @polterabend = Polterabend.new(polterabend_params)
    if @polterabend.save
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

end

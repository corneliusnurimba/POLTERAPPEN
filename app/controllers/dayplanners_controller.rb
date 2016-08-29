class DayplannersController < ApplicationController

  def index
    @activities = Activity.all
    @dayplanners = Dayplanner.all
  end

  def show
    @activities = Activity.all
    @dayplanner = Dayplanner.find(params[:id])
    @polterabend = Polterabend.find_by_id(@dayplanner.polterabend_id)
    @plans = ActivityDayplanner.where(dayplanner_id: @dayplanner.id)

    @plans_and_acts = []
    @plans.each do |p|
      @plans_and_acts << [p, Activity.find(p.activity_id)]
    end
  end

  # def new
  #   @polterabend = Polterabend.find(params[:polterabend_id])
  #   @dayplanner = Dayplanner.new
  # end

  # def create
  #   @polterabend = Polterabend.find(params[:polterabend_id])
  #   @dayplanner = Dayplanner.new(dayplanner_params)
  #   if @dayplanner.save
  #     redirect_to polterabend_path(@polterabend)
  #   else
  #     @errors = @dayplanner.errors.full_messages
  #     render :new
  #   end
  # end

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

  def dayplanner_params
    params.require(:dayplanner).permit(:datetime, :polterabend_id)
  end

end

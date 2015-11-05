class WeekdaysWorkoutsController < ApplicationController
  before_action :set_weekdays_workout, only: [:show, :edit, :update, :destroy]

  # GET /weekdays_workouts
  # GET /weekdays_workouts.json
  def index
    @weekdays_workouts = WeekdaysWorkout.all
  end

  # GET /weekdays_workouts/1
  # GET /weekdays_workouts/1.json
  def show
  end

  # GET /weekdays_workouts/new
  def new
    @weekdays_workout = WeekdaysWorkout.new
  end

  # GET /weekdays_workouts/1/edit
  def edit
  end

  # POST /weekdays_workouts
  # POST /weekdays_workouts.json
  def create
    @weekdays_workout = WeekdaysWorkout.new(weekdays_workout_params)

    respond_to do |format|
      if @weekdays_workout.save
        format.html { redirect_to @weekdays_workout, notice: 'Weekdays workout was successfully created.' }
        format.json { render :show, status: :created, location: @weekdays_workout }
      else
        format.html { render :new }
        format.json { render json: @weekdays_workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekdays_workouts/1
  # PATCH/PUT /weekdays_workouts/1.json
  def update
    respond_to do |format|
      if @weekdays_workout.update(weekdays_workout_params)
        format.html { redirect_to @weekdays_workout, notice: 'Weekdays workout was successfully updated.' }
        format.json { render :show, status: :ok, location: @weekdays_workout }
      else
        format.html { render :edit }
        format.json { render json: @weekdays_workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekdays_workouts/1
  # DELETE /weekdays_workouts/1.json
  def destroy
    @weekdays_workout.destroy
    respond_to do |format|
      format.html { redirect_to weekdays_workouts_url, notice: 'Weekdays workout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekdays_workout
      @weekdays_workout = WeekdaysWorkout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekdays_workout_params
      params[:weekdays_workout]
    end
end

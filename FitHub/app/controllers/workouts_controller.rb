class WorkoutsController < ApplicationController
  before_action :authenticate_user, :current_user
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  # GET /workouts
  # GET /workouts.json

  def authenticate_user
    if current_user.nil?
      redirect_to root_url
    end
  end

  def index
    @workouts = Workout.all
  end

  def my_workouts
    @my_workouts = current_user.workouts
  end
  def followed
    @my_workouts = current_user.workouts
  end
  
  # GET /workouts/1
  # GET /workouts/1.json
  def show
    @like = Like.new
    @users_workout = UsersWorkout.new
  end

  # GET /workouts/new
  def new
    @workout = Workout.new
  end

  # GET /workouts/1/edit
  def edit
  end

  # POST /workouts
  # POST /workouts.json
  def create
    @workout = Workout.new(workout_params)
    @workout.users << current_user
    respond_to do |format|

      if @workout.save
        format.html { redirect_to @workout, notice: 'Workout was successfully created.' }
        format.json { render :show, status: :created, location: @workout }
      else
        format.html { render :new }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workouts/1
  # PATCH/PUT /workouts/1.json
  def update
    respond_to do |format|
      if @workout.update(workout_params) && @workout.user_id == current_user.id
        format.html { redirect_to @workout, notice: 'Workout was successfully updated.' }
        format.json { render :show, status: :ok, location: @workout }
      else
        format.html { redirect_to @workout, notice: 'You are not allowed to edit this workout!' }
        format.json { render json: @workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts/1
  # DELETE /workouts/1.json
  def destroy
    @workout.destroy
    respond_to do |format|
      format.html { redirect_to my_workouts_url, notice: 'Workout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_params
      params.require(:workout).permit(:name, :likes, :category, :user_id, :description, :challenges, :exercise_ids => [])
    end
end

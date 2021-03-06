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
    if params[:search]
      @workouts = Workout.search(params[:search])
    else
      @workouts = Workout.all
    end
  end

  def my_workouts
    @my_workouts = current_user.workouts
  end

  def followed
    @followed_workout_ids = []
    @followed_workouts = []
    UsersWorkout.where(:user_id => current_user.id).each do |x|
      @followed_workout_ids << x.workout_id
    end
    @followed_workout_ids.each do |id|
      if Workout.find(id).creator != current_user.name
        @followed_workouts << Workout.find(id)
      end
    end

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
    respond_to do |format|

      if @workout.save
        if params[:days]
          params[:days].each do |day|
            WeekdaysWorkout.create(:weekday_id => Weekday.find_by_name(day).id, :workout_id => @workout.id)
          end
        end
        if params[:details]
        #wire up the sets and reps for this particular workout
          params[:details].each do |data|
            SetsAndRep.create(:workout_id => @workout.id, :exercise_id => data[:ex_num].to_i, :sets => data[:sets].to_i, :reps => data[:reps].to_i)
          end
        end
        # create the realationship between the workout and the user
        UsersWorkout.create(:user_id => current_user.id, :workout_id => @workout.id)


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
    if params[:details]
    #update up the sets and reps for this particular workout
    SetsAndRep.where(:workout_id => @workout.id).delete_all
      params[:details].each do |data|
        SetsAndRep.create(:workout_id => @workout.id, :exercise_id => data[:ex_num].to_i, :sets => data[:sets].to_i, :reps => data[:reps].to_i)
      end
    end
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
    UsersWorkout.where(:workout_id => @workout.id).destroy_all
    SetsAndRep.where(:workout_id => @workout.id).destroy_all
    WorkoutsExercise.where(:workout_id => @workout.id).destroy_all
    Like.where(:workout_id => @workout.id).destroy_all

    respond_to do |format|
      format.html { redirect_to my_workouts_url, notice: 'Workout was successfully deleted.' }
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
      params.require(:workout).permit(:name, :likes, :creator, :category, :user_id, :description, :challenges, :exercise_ids => [])
    end

end

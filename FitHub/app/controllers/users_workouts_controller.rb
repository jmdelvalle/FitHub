class UsersWorkoutsController < ApplicationController
  before_action :set_users_workout, only: [:show, :edit, :update, :destroy]

  # GET /users_workouts
  # GET /users_workouts.json
  def index
    @users_workouts = UsersWorkout.all
  end

  # GET /users_workouts/1
  # GET /users_workouts/1.json
  def show
  end

  # GET /users_workouts/new
  def new
    @users_workout = UsersWorkout.new
  end

  # GET /users_workouts/1/edit
  def edit
  end

  # POST /users_workouts
  # POST /users_workouts.json
  def create
    @users_workout = UsersWorkout.new(users_workout_params)

    respond_to do |format|
      if @users_workout.save
        format.html { redirect_to @users_workout, notice: 'Users workout was successfully created.' }
        format.json { render :show, status: :created, location: @users_workout }
      else
        format.html { render :new }
        format.json { render json: @users_workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_workouts/1
  # PATCH/PUT /users_workouts/1.json
  def update
    respond_to do |format|
      if @users_workout.update(users_workout_params)
        format.html { redirect_to @users_workout, notice: 'Users workout was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_workout }
      else
        format.html { render :edit }
        format.json { render json: @users_workout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_workouts/1
  # DELETE /users_workouts/1.json
  def destroy
    @users_workout.destroy
    respond_to do |format|
      format.html { redirect_to users_workouts_url, notice: 'Users workout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_workout
      @users_workout = UsersWorkout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_workout_params
      params[:users_workout]
    end
end

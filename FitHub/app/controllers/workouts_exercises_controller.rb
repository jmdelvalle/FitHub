class WorkoutsExercisesController < ApplicationController
  before_action :set_workouts_exercise, only: [:show, :edit, :update, :destroy]

  # GET /workouts_exercises
  # GET /workouts_exercises.json
  def index
    @workouts_exercises = WorkoutsExercise.all
  end

  # GET /workouts_exercises/1
  # GET /workouts_exercises/1.json
  def show
  end

  # GET /workouts_exercises/new
  def new
    @workouts_exercise = WorkoutsExercise.new
  end

  # GET /workouts_exercises/1/edit
  def edit
  end

  # POST /workouts_exercises
  # POST /workouts_exercises.json
  def create
    @workouts_exercise = WorkoutsExercise.new(workouts_exercise_params)

    respond_to do |format|
      if @workouts_exercise.save
        format.html { redirect_to users_profile_path }
        format.json { render :show, status: :created, location: @workouts_exercise }
      else
        format.html { render :new }
        format.json { render json: @workouts_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workouts_exercises/1
  # PATCH/PUT /workouts_exercises/1.json
  def update
    respond_to do |format|
      if @workouts_exercise.update(workouts_exercise_params)
        format.html { redirect_to @workouts_exercise, notice: 'Workouts exercise was successfully updated.' }
        format.json { render :show, status: :ok, location: @workouts_exercise }
      else
        format.html { render :edit }
        format.json { render json: @workouts_exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workouts_exercises/1
  # DELETE /workouts_exercises/1.json
  def destroy
    @workouts_exercise.destroy
    respond_to do |format|
      format.html { redirect_to workouts_exercises_url, notice: 'Workouts exercise was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workouts_exercise
      @workouts_exercise = WorkoutsExercise.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workouts_exercise_params
      params.require(:workouts_exercise).permit(:workout_id, :exercise_id)
    end
end

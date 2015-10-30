class UsersGymsController < ApplicationController
  before_action :set_users_gym, only: [:show, :edit, :update, :destroy]

  # GET /users_gyms
  # GET /users_gyms.json
  def index
    @users_gyms = UsersGym.all
  end

  # GET /users_gyms/1
  # GET /users_gyms/1.json
  def show
  end

  # GET /users_gyms/new
  def new
    @users_gym = UsersGym.new
  end

  # GET /users_gyms/1/edit
  def edit
  end

  # POST /users_gyms
  # POST /users_gyms.json
  def create
    @users_gym = UsersGym.new(users_gym_params)

    respond_to do |format|
      if @users_gym.save
        format.html { redirect_to @users_gym, notice: 'Added to Your Gyms' }
        format.json { render :show, status: :created, location: @users_gym }
      else
        format.html { render :new }
        format.json { render json: @users_gym.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users_gyms/1
  # PATCH/PUT /users_gyms/1.json
  def update
    respond_to do |format|
      if @users_gym.update(users_gym_params)
        format.html { redirect_to @users_gym, notice: 'Users Gym was successfully updated.' }
        format.json { render :show, status: :ok, location: @users_gym }
      else
        format.html { render :edit }
        format.json { render json: @users_gym.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users_gyms/1
  # DELETE /users_gyms/1.json
  def destroy
    @users_gym.destroy
    respond_to do |format|
      format.html { redirect_to users_gyms_url, notice: 'Users Gym was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_users_gym
      @users_gym = UsersGym.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def users_gym_params
      params.require(:users_gym).permit(:user_id, :gym_id)
    end
end

class UsersController < ApplicationController
  before_action :set_auth, only: [:edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all - [current_user]
  end

  def home
    if current_user
      render 'home'
    else
      redirect_to root_url
    end
  end

  # GET /users/1
  # GET /users/1.json

  def profile
  end

  # GET /users/1/edit
  def edit
    @user = current_user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if current_user.update(user_params)
        format.html { redirect_to users_profile_path, notice: 'You Just Updated Your Profile!' }
        format.json { render :profile, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.


    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:c_bodyweight, :c_bench, :c_squat, :c_deadlift, :t_bodyweight, :t_bench, :t_squat, :t_deadlift)
    end

    def set_auth
      @auth = session[:omniauth] if session[:omniauth]
    end
end

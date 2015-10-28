class GymsUsersController < ApplicationController
  before_action :set_gyms_user, only: [:show, :edit, :update, :destroy]

  # GET /gyms_users
  # GET /gyms_users.json
  def index
    @gyms_users = GymsUser.all
  end

  # GET /gyms_users/1
  # GET /gyms_users/1.json
  def show
  end

  # GET /gyms_users/new
  def new
    @gyms_user = GymsUser.new
  end

  # GET /gyms_users/1/edit
  def edit
  end

  # POST /gyms_users
  # POST /gyms_users.json
  def create
    @gyms_user = GymsUser.new(gyms_user_params)

    respond_to do |format|
      if @gyms_user.save
        format.html { redirect_to @gyms_user, notice: 'Gyms user was successfully created.' }
        format.json { render :show, status: :created, location: @gyms_user }
      else
        format.html { render :new }
        format.json { render json: @gyms_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gyms_users/1
  # PATCH/PUT /gyms_users/1.json
  def update
    respond_to do |format|
      if @gyms_user.update(gyms_user_params)
        format.html { redirect_to @gyms_user, notice: 'Gyms user was successfully updated.' }
        format.json { render :show, status: :ok, location: @gyms_user }
      else
        format.html { render :edit }
        format.json { render json: @gyms_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gyms_users/1
  # DELETE /gyms_users/1.json
  def destroy
    @gyms_user.destroy
    respond_to do |format|
      format.html { redirect_to gyms_users_url, notice: 'Gyms user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gyms_user
      @gyms_user = GymsUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gyms_user_params
      params[:gyms_user]
    end
end

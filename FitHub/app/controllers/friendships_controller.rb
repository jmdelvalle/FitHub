class FriendshipsController < ApplicationController
  before_action :set_friendship, only: [:show, :edit, :update, :destroy]

  # GET /friendships
  # GET /friendships.json
  def index
    @friendships = Friendship.all
  end

  # GET /friendships/1
  # GET /friendships/1.json
  def show
  end

  # GET /friendships/new
  def new
    @friendship = Friendship.new
  end

  # GET /friendships/1/edit
  def edit
  end

  # POST /friendships
  # POST /friendships.json
def create
  # @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
  if current_user.friendships.collect {|friendship| friendship.friend_id}.include?(params[:friend_id].to_i)
    flash[:alert] = "Hey! You are already following them."
    redirect_to users_profile_path
  else
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    @friendship.save
    flash[:notice] = "Successfully Following."
    redirect_to users_profile_path
  end

  # if @friendship.save
  #   flash[:notice] = "Successfully Following."
  #   redirect_to users_profile_path
  # else
  #   flash[:error] = "Unable to Follow."
  #   redirect_to users_profile_path
  # end
end

def destroy
  @friendship = current_user.friendships.find(params[:id])
  @friendship.destroy
  flash[:notice] = "Removed friendship."
  redirect_to users_profile_path
end
  # PATCH/PUT /friendships/1
  # PATCH/PUT /friendships/1.json
  def update
    respond_to do |format|
      if @friendship.update(friendship_params)
        format.html { redirect_to @friendship, notice: 'Friendship was successfully updated.' }
        format.json { render :show, status: :ok, location: @friendship }
      else
        format.html { render :edit }
        format.json { render json: @friendship.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendship
      @friendship = Friendship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friendship_params
      params[:friendship]
    end
end

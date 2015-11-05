class SetsAndRepsController < ApplicationController
  before_action :set_sets_and_rep, only: [:show, :edit, :update, :destroy]

  # GET /sets_and_reps
  # GET /sets_and_reps.json
  def index
    @sets_and_reps = SetsAndRep.all
  end

  # GET /sets_and_reps/1
  # GET /sets_and_reps/1.json
  def show
  end

  # GET /sets_and_reps/new
  def new
    @sets_and_rep = SetsAndRep.new
  end

  # GET /sets_and_reps/1/edit
  def edit
  end

  # POST /sets_and_reps
  # POST /sets_and_reps.json
  def create
    @sets_and_rep = SetsAndRep.new(sets_and_rep_params)

    respond_to do |format|
      if @sets_and_rep.save
        format.html { redirect_to @sets_and_rep, notice: 'Sets and rep was successfully created.' }
        format.json { render :show, status: :created, location: @sets_and_rep }
      else
        format.html { render :new }
        format.json { render json: @sets_and_rep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sets_and_reps/1
  # PATCH/PUT /sets_and_reps/1.json
  def update
    respond_to do |format|
      if @sets_and_rep.update(sets_and_rep_params)
        format.html { redirect_to @sets_and_rep, notice: 'Sets and rep was successfully updated.' }
        format.json { render :show, status: :ok, location: @sets_and_rep }
      else
        format.html { render :edit }
        format.json { render json: @sets_and_rep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sets_and_reps/1
  # DELETE /sets_and_reps/1.json
  def destroy
    @sets_and_rep.destroy
    respond_to do |format|
      format.html { redirect_to sets_and_reps_url, notice: 'Sets and rep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sets_and_rep
      @sets_and_rep = SetsAndRep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sets_and_rep_params
      params[:sets_and_rep]
    end
end

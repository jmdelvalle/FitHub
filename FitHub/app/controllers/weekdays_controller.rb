class WeekdaysController < ApplicationController
  before_action :set_weekday, only: [:show, :edit, :update, :destroy]

  # GET /weekdays
  # GET /weekdays.json
  def index
    @weekdays = Weekday.all
  end

  # GET /weekdays/1
  # GET /weekdays/1.json
  def show
  end

  # GET /weekdays/new
  def new
    @weekday = Weekday.new
  end

  # GET /weekdays/1/edit
  def edit
  end

  # POST /weekdays
  # POST /weekdays.json
  def create
    @weekday = Weekday.new(weekday_params)

    respond_to do |format|
      if @weekday.save
        format.html { redirect_to @weekday, notice: 'Weekday was successfully created.' }
        format.json { render :show, status: :created, location: @weekday }
      else
        format.html { render :new }
        format.json { render json: @weekday.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekdays/1
  # PATCH/PUT /weekdays/1.json
  def update
    respond_to do |format|
      if @weekday.update(weekday_params)
        format.html { redirect_to @weekday, notice: 'Weekday was successfully updated.' }
        format.json { render :show, status: :ok, location: @weekday }
      else
        format.html { render :edit }
        format.json { render json: @weekday.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekdays/1
  # DELETE /weekdays/1.json
  def destroy
    @weekday.destroy
    respond_to do |format|
      format.html { redirect_to weekdays_url, notice: 'Weekday was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekday
      @weekday = Weekday.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekday_params
      params[:weekday]
    end
end

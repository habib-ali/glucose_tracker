class BloodGulcoseReadingsController < ApplicationController
  before_action :authenticate_user!
  protect_from_forgery prepend: true
  before_action :set_blood_gulcose_reading, only: [:show, :edit, :update, :destroy]
  # GET /blood_gulcose_readings
  # GET /blood_gulcose_readings.json
  def index
    @blood_gulcose_readings = BloodGulcoseReading.all
  end

  # GET /blood_gulcose_readings/1
  # GET /blood_gulcose_readings/1.json
  def show
  end

  # GET /blood_gulcose_readings/new
  def new
    @blood_gulcose_reading = BloodGulcoseReading.new
  end

  # GET /blood_gulcose_readings/1/edit
  def edit
  end

  # POST /blood_gulcose_readings
  # POST /blood_gulcose_readings.json
  def create
    @blood_gulcose_reading = BloodGulcoseReading.new(blood_gulcose_reading_params)

    respond_to do |format|
      if @blood_gulcose_reading.save
        format.html { redirect_to @blood_gulcose_reading, notice: 'Blood gulcose reading was successfully created.' }
        format.json { render :show, status: :created, location: @blood_gulcose_reading }
      else
        format.html { render :new }
        format.json { render json: @blood_gulcose_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blood_gulcose_readings/1
  # PATCH/PUT /blood_gulcose_readings/1.json
  def update
    respond_to do |format|
      if @blood_gulcose_reading.update(blood_gulcose_reading_params)
        format.html { redirect_to @blood_gulcose_reading, notice: 'Blood gulcose reading was successfully updated.' }
        format.json { render :show, status: :ok, location: @blood_gulcose_reading }
      else
        format.html { render :edit }
        format.json { render json: @blood_gulcose_reading.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_gulcose_readings/1
  # DELETE /blood_gulcose_readings/1.json
  def destroy
    @blood_gulcose_reading.destroy
    respond_to do |format|
      format.html { redirect_to blood_gulcose_readings_url, notice: 'Blood gulcose reading was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_gulcose_reading
      @blood_gulcose_reading = BloodGulcoseReading.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blood_gulcose_reading_params
      params.require(:blood_gulcose_reading).permit(:user_id, :value, :reading_type)
    end
end

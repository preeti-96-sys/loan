class CarInfosController < ApplicationController
  before_action :set_car_info, only: %i[ show edit update destroy ]

  # GET /car_infos or /car_infos.json
  def index
    @car_infos = CarInfo.all
  end

  # GET /car_infos/1 or /car_infos/1.json
  def show
  end

  # GET /car_infos/new
  def new
    @car_info = CarInfo.new
  end

  # GET /car_infos/1/edit
  def edit
  end

  # POST /car_infos or /car_infos.json
  def create
    @car_info = CarInfo.new(car_info_params)

    respond_to do |format|
      if @car_info.save
        format.html { redirect_to @car_info, notice: "Car info was successfully created." }
        format.json { render :show, status: :created, location: @car_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @car_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_infos/1 or /car_infos/1.json
  def update
    respond_to do |format|
      if @car_info.update(car_info_params)
        format.html { redirect_to @car_info, notice: "Car info was successfully updated." }
        format.json { render :show, status: :ok, location: @car_info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @car_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_infos/1 or /car_infos/1.json
  def destroy
    @car_info.destroy
    respond_to do |format|
      format.html { redirect_to car_infos_url, notice: "Car info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_info
      @car_info = CarInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_info_params
      params.require(:car_info).permit(:Name, :Age, :Phone, :Nationality, :Annual_Income, :On_Road_Price_Of_Car, :Desired_Loan_Amount)
    end
end

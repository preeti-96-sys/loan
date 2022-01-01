class HomeInfosController < ApplicationController
  before_action :set_home_info, only: %i[ show edit update destroy ]

  # GET /home_infos or /home_infos.json
  def index
    @home_infos = HomeInfo.all
  end

  # GET /home_infos/1 or /home_infos/1.json
  def show
  end

  # GET /home_infos/new
  def new
    @home_info = HomeInfo.new
  end

  # GET /home_infos/1/edit
  def edit
  end

  # POST /home_infos or /home_infos.json
  def create
    @home_info = HomeInfo.new(home_info_params)

    respond_to do |format|
      if @home_info.save
        format.html { redirect_to @home_info, notice: "Home info was successfully created." }
        format.json { render :show, status: :created, location: @home_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @home_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_infos/1 or /home_infos/1.json
  def update
    respond_to do |format|
      if @home_info.update(home_info_params)
        format.html { redirect_to @home_info, notice: "Home info was successfully updated." }
        format.json { render :show, status: :ok, location: @home_info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @home_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_infos/1 or /home_infos/1.json
  def destroy
    @home_info.destroy
    respond_to do |format|
      format.html { redirect_to home_infos_url, notice: "Home info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_info
      @home_info = HomeInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def home_info_params
      params.require(:home_info).permit(:Name, :Age, :Phone, :Cibil_Score, :Net_Monthly_Income, :Desired_Loan_Amount)
    end
end

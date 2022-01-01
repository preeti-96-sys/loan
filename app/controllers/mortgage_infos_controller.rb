class MortgageInfosController < ApplicationController
  before_action :set_mortgage_info, only: %i[ show edit update destroy ]

  # GET /mortgage_infos or /mortgage_infos.json
  def index
    @mortgage_infos = MortgageInfo.all
  end

  # GET /mortgage_infos/1 or /mortgage_infos/1.json
  def show
  end

  # GET /mortgage_infos/new
  def new
    @mortgage_info = MortgageInfo.new
  end

  # GET /mortgage_infos/1/edit
  def edit
  end

  # POST /mortgage_infos or /mortgage_infos.json
  def create
    @mortgage_info = MortgageInfo.new(mortgage_info_params)

    respond_to do |format|
      if @mortgage_info.save
        format.html { redirect_to @mortgage_info, notice: "Mortgage info was successfully created." }
        format.json { render :show, status: :created, location: @mortgage_info }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mortgage_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mortgage_infos/1 or /mortgage_infos/1.json
  def update
    respond_to do |format|
      if @mortgage_info.update(mortgage_info_params)
        format.html { redirect_to @mortgage_info, notice: "Mortgage info was successfully updated." }
        format.json { render :show, status: :ok, location: @mortgage_info }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mortgage_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mortgage_infos/1 or /mortgage_infos/1.json
  def destroy
    @mortgage_info.destroy
    respond_to do |format|
      format.html { redirect_to mortgage_infos_url, notice: "Mortgage info was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mortgage_info
      @mortgage_info = MortgageInfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mortgage_info_params
      params.require(:mortgage_info).permit(:Name, :Age, :Phone, :Nationality, :Cibil_Score, :Net_Monthly_Income, :Desired_Loan_Amount)
    end
end

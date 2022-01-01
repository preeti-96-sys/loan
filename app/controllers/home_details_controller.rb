class HomeDetailsController < ApplicationController
  before_action :set_home_detail, only: %i[ show edit update destroy ]

  # GET /home_details or /home_details.json
  def index
    @home_details = HomeDetail.all
  end

  # GET /home_details/1 or /home_details/1.json
  def show
  end

  # GET /home_details/new
  def new
    @home_detail = HomeDetail.new
  end

  # GET /home_details/1/edit
  def edit
  end

  # POST /home_details or /home_details.json
  def create
    @home_detail = HomeDetail.new(home_detail_params)

    respond_to do |format|
      if @home_detail.save
        format.html { redirect_to @home_detail, notice: "Home detail was successfully created." }
        format.json { render :show, status: :created, location: @home_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @home_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_details/1 or /home_details/1.json
  def update
    respond_to do |format|
      if @home_detail.update(home_detail_params)
        format.html { redirect_to @home_detail, notice: "Home detail was successfully updated." }
        format.json { render :show, status: :ok, location: @home_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @home_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_details/1 or /home_details/1.json
  def destroy
    @home_detail.destroy
    respond_to do |format|
      format.html { redirect_to home_details_url, notice: "Home detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_detail
      @home_detail = HomeDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def home_detail_params
      params.require(:home_detail).permit(:Name, :Age, :Phone, :Nationality, :Desired_Loan, :Net_Monthly_Income)
    end
end

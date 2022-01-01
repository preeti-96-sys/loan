class PersonalDetailsController < ApplicationController
  before_action :set_personal_detail, only: %i[ show edit update destroy ]

  # GET /personal_details or /personal_details.json
  def index
    @personal_details = PersonalDetail.all
  end

  # GET /personal_details/1 or /personal_details/1.json
  def show
  end

  # GET /personal_details/new
  def new
    @personal_detail = PersonalDetail.new
  end

  # GET /personal_details/1/edit
  def edit
  end

  # POST /personal_details or /personal_details.json
  def create
    @personal_detail = PersonalDetail.new(personal_detail_params)

    respond_to do |format|
      if @personal_detail.save
        format.html { redirect_to @personal_detail, notice: "Personal detail was successfully created." }
        format.json { render :show, status: :created, location: @personal_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @personal_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personal_details/1 or /personal_details/1.json
  def update
    respond_to do |format|
      if @personal_detail.update(personal_detail_params)
        format.html { redirect_to @personal_detail, notice: "Personal detail was successfully updated." }
        format.json { render :show, status: :ok, location: @personal_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @personal_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personal_details/1 or /personal_details/1.json
  def destroy
    @personal_detail.destroy
    respond_to do |format|
      format.html { redirect_to personal_details_url, notice: "Personal detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_detail
      @personal_detail = PersonalDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def personal_detail_params
      params.require(:personal_detail).permit(:Name, :Phone, :Age, :Nationality, :Cibil_Score, :Net_Monthly_Income, :Desired_Loan_Amount)
    end
end

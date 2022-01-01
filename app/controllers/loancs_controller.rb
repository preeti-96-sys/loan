class LoancsController < ApplicationController
  before_action :set_loanc, only: %i[ show edit update destroy ]

  # GET /loancs or /loancs.json
  def index
    @loancs = Loanc.all
  end

  # GET /loancs/1 or /loancs/1.json
  def show
  end

  # GET /loancs/new
  def new
    @loanc = Loanc.new
  end

  # GET /loancs/1/edit
  def edit
  end

  # POST /loancs or /loancs.json
  def create
    @loanc = Loanc.new(loanc_params)

    respond_to do |format|
      if @loanc.save
        format.html { redirect_to @loanc, notice: "Loanc was successfully created." }
        format.json { render :show, status: :created, location: @loanc }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loanc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loancs/1 or /loancs/1.json
  def update
    respond_to do |format|
      if @loanc.update(loanc_params)
        format.html { redirect_to @loanc, notice: "Loanc was successfully updated." }
        format.json { render :show, status: :ok, location: @loanc }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loanc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loancs/1 or /loancs/1.json
  def destroy
    @loanc.destroy
    respond_to do |format|
      format.html { redirect_to loancs_url, notice: "Loanc was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loanc
      @loanc = Loanc.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loanc_params
      params.require(:loanc).permit(:Name, :Phone, :City, :Desired_Loan, :Net_monthly_income)
    end
end

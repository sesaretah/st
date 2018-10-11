class EarningsController < ApplicationController
  before_action :set_earning, only: [:show, :edit, :update, :destroy]

  # GET /earnings
  # GET /earnings.json
  def index
    @earnings = Earning.all
  end

  # GET /earnings/1
  # GET /earnings/1.json
  def show
  end

  # GET /earnings/new
  def new
    @earning = Earning.new
  end

  # GET /earnings/1/edit
  def edit
  end

  # POST /earnings
  # POST /earnings.json
  def create
    @earning = Earning.new(earning_params)
    if params[:earning][:certification_id].blank?
      @certification = Certification.create(title: params[:certification_title])
      @earning.certification_id = @certification.id
    end
    @company = current_user.company
    @earning.company_id = current_user.company.id
    respond_to do |format|
      if @earning.save
        format.html { redirect_to @earning, notice: 'Earning was successfully created.' }
        format.json { render :show, status: :created, location: @earning }
        format.js
      else
        format.html { render :new }
        format.json { render json: @earning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /earnings/1
  # PATCH/PUT /earnings/1.json
  def update
    respond_to do |format|
      if @earning.update(earning_params)
        format.html { redirect_to @earning, notice: 'Earning was successfully updated.' }
        format.json { render :show, status: :ok, location: @earning }
      else
        format.html { render :edit }
        format.json { render json: @earning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /earnings/1
  # DELETE /earnings/1.json
  def destroy
    @earning.destroy
    respond_to do |format|
      format.html { redirect_to earnings_url, notice: 'Earning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_earning
      @earning = Earning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def earning_params
      params.require(:earning).permit(:certification_id, :company_id, :start_year, :end_year)
    end
end

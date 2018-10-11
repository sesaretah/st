class ParticipationsController < ApplicationController
  before_action :set_participation, only: [:show, :edit, :update, :destroy]

  # GET /participations
  # GET /participations.json
  def index
    @participations = Participation.all
  end

  # GET /participations/1
  # GET /participations/1.json
  def show
  end

  # GET /participations/new
  def new
    @participation = Participation.new
  end

  # GET /participations/1/edit
  def edit
    @company = current_user.company
  end

  # POST /participations
  # POST /participations.json
  def create
    @participation = Participation.new(participation_params)
    if params[:participation][:exhibition_id].blank?
      @exhibition = Exhibition.create(title: params[:exhibition_title])
      @participation.exhibition_id = @exhibition.id
    end
    @company = current_user.company
    @participation.company_id = current_user.company.id
    respond_to do |format|
      if @participation.save
        format.html { redirect_to @participation, notice: 'Participation was successfully created.' }
        format.json { render :show, status: :created, location: @participation }
        format.js
      else
        format.html { render :new }
        format.json { render json: @participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participations/1
  # PATCH/PUT /participations/1.json
  def update
    if params[:participation][:exhibition_id].blank?
      @exhibition = Exhibition.create(title: params[:exhibition_title])
      @participation.exhibition_id = @exhibition.id
    end
    @company = current_user.company
    @participation.company_id = current_user.company.id
    respond_to do |format|
      if @participation.update(participation_params)
        format.html { redirect_to @participation, notice: 'Participation was successfully updated.' }
        format.json { render :show, status: :ok, location: @participation }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participations/1
  # DELETE /participations/1.json
  def destroy
    @company = current_user.company
    @participation.destroy
    respond_to do |format|
      format.html { redirect_to participations_url, notice: 'Participation was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participation
      @participation = Participation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participation_params
      params.require(:participation).permit(:exhibition_id, :company_id, :year)
    end
end

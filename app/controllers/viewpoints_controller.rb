class ViewpointsController < ApplicationController
  before_action :set_viewpoint, only: [:show, :edit, :update, :destroy]

  # GET /viewpoints
  # GET /viewpoints.json
  def index
    @viewpoints = Viewpoint.all
  end

  # GET /viewpoints/1
  # GET /viewpoints/1.json
  def show
  end

  # GET /viewpoints/new
  def new
    @viewpoint = Viewpoint.new
  end

  # GET /viewpoints/1/edit
  def edit
  end

  # POST /viewpoints
  # POST /viewpoints.json
  def create
    @viewpoint = Viewpoint.new(viewpoint_params)
    @viewpoint.user_id = current_user.id
    @profile = current_user.profile
    respond_to do |format|
      if @viewpoint.save
        format.html { redirect_to @viewpoint, notice: 'Viewpoint was successfully created.' }
        format.json { render :show, status: :created, location: @viewpoint }
        format.js
      else
        format.html { render :new }
        format.json { render json: @viewpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /viewpoints/1
  # PATCH/PUT /viewpoints/1.json
  def update
    respond_to do |format|
      if @viewpoint.update(viewpoint_params)
        format.html { redirect_to @viewpoint, notice: 'Viewpoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @viewpoint }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @viewpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /viewpoints/1
  # DELETE /viewpoints/1.json
  def destroy
    @profile = current_user.profile
    @viewpoint.destroy
    respond_to do |format|
      format.html { redirect_to viewpoints_url, notice: 'Viewpoint was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_viewpoint
      @viewpoint = Viewpoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def viewpoint_params
      params.require(:viewpoint).permit(:content, :user_id)
    end
end

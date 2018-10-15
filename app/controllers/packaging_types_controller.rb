class PackagingTypesController < ApplicationController
  before_action :set_packaging_type, only: [:show, :edit, :update, :destroy]

  # GET /packaging_types
  # GET /packaging_types.json
  def index
    @packaging_types = PackagingType.all
  end

  # GET /packaging_types/1
  # GET /packaging_types/1.json
  def show
  end

  # GET /packaging_types/new
  def new
    @packaging_type = PackagingType.new
  end

  # GET /packaging_types/1/edit
  def edit
  end

  # POST /packaging_types
  # POST /packaging_types.json
  def create
    @packaging_type = PackagingType.new(packaging_type_params)

    respond_to do |format|
      if @packaging_type.save
        format.html { redirect_to @packaging_type, notice: 'Packaging type was successfully created.' }
        format.json { render :show, status: :created, location: @packaging_type }
      else
        format.html { render :new }
        format.json { render json: @packaging_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /packaging_types/1
  # PATCH/PUT /packaging_types/1.json
  def update
    respond_to do |format|
      if @packaging_type.update(packaging_type_params)
        format.html { redirect_to @packaging_type, notice: 'Packaging type was successfully updated.' }
        format.json { render :show, status: :ok, location: @packaging_type }
      else
        format.html { render :edit }
        format.json { render json: @packaging_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packaging_types/1
  # DELETE /packaging_types/1.json
  def destroy
    @packaging_type.destroy
    respond_to do |format|
      format.html { redirect_to packaging_types_url, notice: 'Packaging type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_packaging_type
      @packaging_type = PackagingType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def packaging_type_params
      params.require(:packaging_type).permit(:title)
    end
end

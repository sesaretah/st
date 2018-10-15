class PackagingsController < ApplicationController
  before_action :set_packaging, only: [:show, :edit, :update, :destroy]

  # GET /packagings
  # GET /packagings.json
  def index
    @packagings = Packaging.all
  end

  # GET /packagings/1
  # GET /packagings/1.json
  def show
  end

  # GET /packagings/new
  def new
    @packaging = Packaging.new
  end

  # GET /packagings/1/edit
  def edit
    @product = @packaging.product
  end

  # POST /packagings
  # POST /packagings.json
  def create
    @packaging = Packaging.new(packaging_params)
    @product = Product.find(params[:product_id])
    @packaging.product_id = @product.id
    @packaging.save
    respond_to do |format|
        format.js
    end
  end

  # PATCH/PUT /packagings/1
  # PATCH/PUT /packagings/1.json
  def update
    @product = Product.find(params[:product_id])
    @packaging.product_id = @product.id
    @packaging.update(packaging_params)
    respond_to do |format|
        format.js
    end
  end

  # DELETE /packagings/1
  # DELETE /packagings/1.json
  def destroy
    @product = @packaging.product
    @packaging.destroy
    respond_to do |format|
      format.html { redirect_to packagings_url, notice: 'Packaging was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_packaging
      @packaging = Packaging.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def packaging_params
      params.require(:packaging).permit(:dimensions, :weight, :weight_scale, :packaging_type, :color, :delivery_detail, :packaging_type_id)
    end
end

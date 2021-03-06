class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customer.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
    @product = Product.find(@customer.product_id)
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)
    @product = Product.find(params[:product_id])
    @customer.product_id = @product.id
    @customer.save
    respond_to do |format|
        format.js
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    @product = Product.find(params[:product_id])
    @customer.product_id = @product.id
    @customer.update(customer_params)
    respond_to do |format|
        format.js
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @product = @customer.product
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:name, :company_id, :product_id, :phone_number)
    end
end

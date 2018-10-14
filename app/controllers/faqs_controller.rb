class FaqsController < ApplicationController
  before_action :set_faq, only: [:show, :edit, :update, :destroy]

  # GET /faqs
  # GET /faqs.json
  def index
    @faqs = Faq.all
  end

  # GET /faqs/1
  # GET /faqs/1.json
  def show
  end

  # GET /faqs/new
  def new
    @faq = Faq.new
  end

  # GET /faqs/1/edit
  def edit
    @product = Product.find(@faq.product_id)
  end

  # POST /faqs
  # POST /faqs.json
  def create
    @faq = Faq.new(faq_params)
    @product = Product.find(params[:product_id])
    @faq.product_id = @product.id
    @faq.save
    respond_to do |format|
        format.js
    end
  end

  # PATCH/PUT /faqs/1
  # PATCH/PUT /faqs/1.json
  def update
    @product = Product.find(params[:product_id])
    @faq.product_id = @product.id
    @faq.update(faq_params)
    respond_to do |format|
        format.js
    end
  end

  # DELETE /faqs/1
  # DELETE /faqs/1.json
  def destroy
    @product = @faq.product
    @faq.destroy
    respond_to do |format|
      format.html { redirect_to faqs_url, notice: 'Faq was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faq
      @faq = Faq.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faq_params
      params.require(:faq).permit(:question, :answer, :product_id)
    end
end

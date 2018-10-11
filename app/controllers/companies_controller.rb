class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy, :company_colleagues, :company_exhibitions, :company_certificates, :company_album, :company_catalogs]
  def company_colleagues
  end

  def company_exhibitions
  end

  def company_certificates
  end

  def company_album
  end

  def company_catalogs
  end


  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # GET /companies/new
  def new
    @company = Company.new
  end

  # GET /companies/1/edit
  def edit
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)
    @company.user_id = current_user.id
    respond_to do |format|
      if @company.save
        format.html { redirect_to '/companies/company_colleagues/' + @company.id.to_s, notice: 'Company was successfully created.' }
        format.json { render :show, status: :created, location: @company }
      else
        format.html { render :new }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    @company.user_id = current_user.id
    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to '/companies/company_colleagues/' + @company.id.to_s, notice: 'Company was successfully updated.' }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
    respond_to do |format|
      format.html { redirect_to companies_url, notice: 'Company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:name, :headquarter_address, :shop_address, :factory_address, :telphone, :fax, :email, :telegram_channel, :instagram_page, :year_established, :total_employees, :user_id)
    end
end

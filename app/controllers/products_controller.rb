class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :set_open_ssl, only: [:new, :edit]
 
  require 'nokogiri'
  require 'open-uri'

  # GET /products
  # GET /products.json
  def index
    @products = Product.all    
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = Product.new
    #require 'openssl'
    #doc = Nokogiri::HTML(open('https://freecurrencyrates.com/en/convert-USD-COP/fcr', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))
    #@rate = doc.css('span.src-entry-to').text 
  end

  # GET /products/1/edit
  def edit    
    #require 'openssl'
    #doc = Nokogiri::HTML(open('https://freecurrencyrates.com/en/convert-USD-COP/fcr', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))
    #@rate = doc.css('span.src-entry-to').text
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
        format.js
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
     

    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    def set_open_ssl
      require 'openssl'
      doc = Nokogiri::HTML(open('https://freecurrencyrates.com/en/convert-USD-COP/fcr', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))
      @rate = doc.css('span.src-entry-to').text 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :valor_usd, :valor_cop, :impuesto, :seguro, :flete, :peso, :aduana, :total_envio_usd, :total_envio_cop, :accion, :bought, :valor_maximo_cop, :total_cost, :exchange_rate)
    end
end

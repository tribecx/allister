class ProductLinesController < ApplicationController
  before_action :set_product_line, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!


  # GET /product_lines
  # GET /product_lines.json
  def index
    @product_lines = ProductLine.all
  end

  # GET /product_lines/1
  # GET /product_lines/1.json
  def show
    @categories = Category.select{ |category| category.product_line_id == @product_line.id}
    @products = Product.all.map {|product| product if product.category_id == @product_line.id}
  end

  # GET /product_lines/new
  def new
    @product_line = ProductLine.new
  end

  # GET /product_lines/1/edit
  def edit
  end

  def new_category
  end

  # POST /product_lines
  # POST /product_lines.json
  def create
    @product_line = ProductLine.new(product_line_params)
    @product_line.categories = []

    respond_to do |format|
      if @product_line.save
        format.html { redirect_to product_lines_path, notice: 'Linea de producto creada.' }
        format.json { render :show, status: :created, location: @product_line }
      else
        format.html { render :new }
        format.json { render json: @product_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_lines/1
  # PATCH/PUT /product_lines/1.json
  def update
    respond_to do |format|
      if @product_line.update(product_line_params)
        format.html { redirect_to @product_line, notice: 'Linea de producto actualizada.' }
        format.json { render :show, status: :ok, location: @product_line }
      else
        format.html { render :edit }
        format.json { render json: @product_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_lines/1
  # DELETE /product_lines/1.json
  def destroy
    @product_line.destroy
    respond_to do |format|
      format.html { redirect_to product_lines_url, notice: 'Linea de producto eliminada.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_line
      @product_line = ProductLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_line_params
      params.require(:product_line).permit(:title)
    end
end

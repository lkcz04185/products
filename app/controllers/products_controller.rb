class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
    @product.variants.build
  end

  def create
    @product = Product.create(product_params)
     if @product.valid?
      redirect_to products_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
    @variants = @product.variants.all
  end

  def destroy
     @product = Product.find(params[:id])
     @product.destroy
     redirect_to products_path
  end


  private

  def product_params
    params.require(:product).permit(:name, :description, variants_attributes: [:id, :name])
  end

end

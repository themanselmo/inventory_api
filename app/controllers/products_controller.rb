class ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(10)
  end

  def create
    @product = Product.new(product_params)
  end

  private

  def product_params
    params.require(:product).permit(:name, :quantity)
  end
end

class ProductsController < ApplicationController
  def index
    @products = Product.order(created_at: :desc).page(params[:page]).per(10)
  end

  def create
    @product = Product.new(product_params)
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      respond_to do |format|
        format.html { redirect_to products_path, notice: "Product updated successfully." }
        format.turbo_stream
      end
    else
      render turbo_stream: turbo_stream.replace(
        "edit_product_#{@product.id}",
        partial: "products/form",
        locals: { product: @product }
      )
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :quantity, :description)
  end
end

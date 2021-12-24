class ProductsController < ApplicationController
  def show
    @product = Product.find_by id: params[:id]
  end

  def index
    return if @product

    flash[:danger] = t ".not_found"
    redirect_to root_path
  end
end

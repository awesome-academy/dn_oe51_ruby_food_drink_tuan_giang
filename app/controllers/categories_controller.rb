class CategoriesController < ApplicationController
  def index
    @categories = Category.all.where("parent_id=?", params[:parent_id])
    @products = Product.where(category_id: @categories.pluck(:id))
  end

  def show
    @categories = Category.all.where("parent_id=?", params[:parent_id])
    @category = Category.find_by(id: params[:id])
    @products = @category.products
  end
end

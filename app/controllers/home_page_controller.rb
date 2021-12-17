class HomePageController < ApplicationController
  def index
    @category = Category.all
    @pagy, @products = pagy(
      Product.order(created_at: :desc),
      items: Settings.count_item.c_6
    )
  end
end

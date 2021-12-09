class HomePageController < ApplicationController
  def index
    @category = Category.all
    @pagy, @products = pagy(
      Product.latest_product,
      items: Settings.c_item.c_6
    )
  end
end

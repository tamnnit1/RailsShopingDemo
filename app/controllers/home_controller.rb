class HomeController < ApplicationController
  def index
    session[:admin_flg] = 0
    @products = Product.all
    @order_item = current_order.order_items.new
  end
end

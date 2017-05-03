class ProductsController < ApplicationController
  def index_method
    @products = Product.all
    render "index.html.erb"
  end
  def all_info_method
    @products = Product.all
    render "index.html.erb"
  end
end

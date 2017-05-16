class ProductsController < ApplicationController

  def index
    @products = Product.all
    sort_attribute = params[:sort]
    sort_order = params[:order]
    discount = params[:discount]
      if sort_attribute && sort_order
        @products = Product.all.order(sort_attribute => sort_order)
      end
      if discount
        @products = Product.where("price < ?", 5)
      end
      
    render "index.html.erb"

  end

  def show
    @product = Product.find(params[:id])
    render "show.html.erb"
  end

  def create
    product = Product.create(
      title: params[:title], 
      price: params[:price], 
      info: params[:info],
      seller: params[:seller]
      )
    flash[:success] = "Product successfully created"
    redirect_to "/products/#{product.id}"
  end

  def edit
    @product = Product.find(params[:id])
    render "edit.html.erb"
  end

  def update
    @product = Product.find(params[:id])

      @product.update(
      title: params[:title], 
      price: params[:price], 
      info: params[:info],
      seller: params[:seller]
      )
      flash[:success] = "Product successfully updated"
    redirect_to "/products/#{@product.id}"
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    flash[:danger] = "Product successfully destroyed"
    redirect_to "/products"
  end
end

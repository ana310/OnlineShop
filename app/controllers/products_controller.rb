class ProductsController < ApplicationController
  def index
    @channels = Channel.all
    if(params[:channel].blank?)
      @products = Channel.find(1).products.all
    else
      @products = Channel.find(params[:channel]).products.all
    end
  end

  def show
    @product = Product.find(params[:id])
    @variants = @product.variants.all
    @comments = @product.comments.all
  end
end

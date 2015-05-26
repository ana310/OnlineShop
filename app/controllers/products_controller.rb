class ProductsController < ApplicationController
  def index
    @channels = Channel.all
    if(params[:channel].blank?)
      @products = Channel.find(1).products.all
    else
      @products = Channel.find(params[:channel]).products.all
    end
  end

  def search
    if(params[:q].blank?)
			@products = Product.all
		else
			@products = Product.where("name like '%" + params[:q] + "%'")
		end
  end

  def show
    @product = Product.find(params[:id])
    @variants = @product.variants.all
    @comments = @product.comments.all
  end

  def buy
    @variant = Variant.find(params[:id])

    if @newOrder.defined?
      @newOrder.variants << @variant
    else
      @newOrder = Order.new(buyer_id: current_buyer.id)
      @newOrder.variants << @variant
    end
  end


end

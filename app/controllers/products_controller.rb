class ProductsController < ApplicationController
  def index
    @channels = Channel.all
    if(params[:channel].blank?)
      @products = Channel.find(1).products.all
    else
      @products = Channel.find(params[:channel]).products.all
    end
  end
end

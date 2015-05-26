class OrdersController < ApplicationController
  def index
    @orders = current_buyer.orders
  end

  def current
    @totalPrice = 0
    @hasToPay = true
    ids = session[:variant_ids]
    @variantsToBuy = Array.new

    if !ids.nil?
      ids.each do |id|
        @variantsToBuy << Variant.find(id.to_i)
      end
    else
      @hasToPay = false
    end

  end

  def pay
    total = 0
    newOrder = Order.new(buyer_id: current_buyer.id)

    if !session[:variant_ids].nil?
      session[:variant_ids].each do |id|
        variant = Variant.find(id)
        newOrder.variants << variant
        total += variant.price
        variant.quantity -= 1
        variant.save
      end

      newOrder.save
      current_buyer.credits -= total
      current_buyer.save
      session[:variant_ids] = nil
    end


    redirect_to "/orders"
  end

end

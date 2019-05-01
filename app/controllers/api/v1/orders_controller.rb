class Api::V1::OrdersController < ApplicationController
  skip_before_action :authorized

  def index
    @orders = Order.all
    render json: @orders
  end

  def create
    # byebug
    @order = Order.create(order_params)
    render json: { order: OrderSerializer.new(@order) }
  end

  def destroy

  end

  private

  def order_params
    params.permit(order_lists:[:name, :price, :customerName, :customerPhone, :specialInstruction] )
  end
end

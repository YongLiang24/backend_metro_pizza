class Api::V1::OrdersController < ApplicationController
  skip_before_action :authorized

  def index
    @orders = Order.all
    render json: @orders
  end

  def create
    byebug
    @order = Order.new(order_params)
    @order.save
    render json: { order: OrderSerializer.new(@order) }
  end

  def destroy

  end

  private

  def order_params
    params.permit(order_lists:[:name, :price, :Customer_Name, :Customer_Phone, :Special_Instruction, :Total_Price, :Order_Time] )
  end
end

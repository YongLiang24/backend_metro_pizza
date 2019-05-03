class Api::V1::OrdersController < ApplicationController
  skip_before_action :authorized

  def index
    # byebug
    @orders = Order.all
    render json: @orders
  end

  def create
    @order = Order.new(order_params)
    @order.save
    render json: @order
  end

  def destroy
    @order = Order.find(params[:id])
    @order.delete
  end

  def show
    # byebug
  end

  private

  def order_params
    params.permit(order_lists:[:Customer_Name, :Customer_Phone, :Special_Instruction,:name, :price,  :Total_Price, :Order_Time])

  end
end

class Api::V1::MenuItemsController < ApplicationController
  skip_before_action :authorized

  def index
    @items =MenuItem.all
    render json: @items
  end

  def create
    @user = User.find(menu_items_params[:user_id])
    @items = MenuItem.new(menu_items_params)
    @items.user_id = @user.id
    @items.save
    render json: { menu_item: MenuItemSerializer.new(@items) }, status: :created
  end

  def destroy
    @item = MenuItem.find(params[:id])
    @item.delete
  end

  private

  def menu_items_params
    params.require(:menu_item).permit(:name, :description, :price, :img_url, :user_id, :category, :menu_item)
  end

end

class MenuItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :user_id, :price, :img_url, :category
  belongs_to :user
end

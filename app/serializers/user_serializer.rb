class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :menu_items
end

class ClothingItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :front_image, :back_image, :event, :category, :user_id
end

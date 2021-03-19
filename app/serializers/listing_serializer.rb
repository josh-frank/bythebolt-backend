class ListingSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :price, :quantity, :unit, :image_urls, :active, :created_at
  has_one :user
end

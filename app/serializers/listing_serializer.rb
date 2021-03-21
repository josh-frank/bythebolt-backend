class ListingSerializer < ActiveModel::Serializer

  attributes :id, :title, :description, :price, :quantity, :unit, :image_urls, :active, :created_at

  has_many :listing_categories

  has_one :user, serializer: UserSerializerForListing

  has_many :favorited_users, serializer: UserSerializerForListing

end

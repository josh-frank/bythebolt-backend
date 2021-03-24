class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :avatar_url, :email, :bio, :location, :created_at

  has_many :user_categories

  has_many :listings, serializer: ListingSerializerForUser

  has_many :favorite_listings, serializer: FavoriteListingSerializerForUser

  has_many :chats

end

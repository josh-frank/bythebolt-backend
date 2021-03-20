class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :avatar_url, :email, :bio, :location, :created_at

  has_many :user_categories
  has_many :listings, serializer: ListingSerializerForUser

end

class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :avatar_url, :email, :bio, :location, :created_at

  has_many :categories
  has_many :listings

end

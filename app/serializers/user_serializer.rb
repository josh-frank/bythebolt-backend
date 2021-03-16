class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :avatar, :email, :bio, :location, :created_at

end

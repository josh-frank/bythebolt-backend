class UserSerializer < ActiveModel::Serializer

  attributes :id, :username, :avatar, :email, :created_at

end

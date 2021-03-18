class UserSerializer < ActiveModel::Serializer

  include Rails.application.routes.url_helpers

  attributes :id, :username, :avatar_url, :email, :bio, :location, :created_at

end

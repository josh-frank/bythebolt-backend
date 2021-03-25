class MessageSerializer < ActiveModel::Serializer

  attributes :id, :content, :message_user, :created_at

  def message_user
    {
      username: object.user.username,
      avatar_url: object.user.avatar_url,
      location: object.user.location
    }
  end

end

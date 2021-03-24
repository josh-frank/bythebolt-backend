class MessageSerializer < ActiveModel::Serializer

  attributes :id, :content, :message_user

  # has_one :chat
  # has_one :user

  def message_user
    {
      username: object.user.username,
      avatar_url: object.user.avatar_url,
      location: object.user.location
    }
  end

end

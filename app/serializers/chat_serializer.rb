class ChatSerializer < ActiveModel::Serializer

  attributes :id, :subject, :participants
  
  has_many :messages

  def participants
    object.users.map( &:username ).uniq
  end

end

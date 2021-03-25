class ChatSerializer < ActiveModel::Serializer

  attributes :id, :subject, :participants, :listing_id
  
  has_many :messages

  def participants
    object.users.map( &:username ).uniq
  end

  def listing_id
    object.listing.id
  end

end

class FavoriteListingSerializerForListing < ActiveModel::Serializer

  attributes :id
  
  has_one :user, serializer: UserSerializerForListing

end

class FavoriteListingSerializerForUser < ActiveModel::Serializer

  attributes :id
  
  has_one :listing, serializer: ListingSerializerForUser

end

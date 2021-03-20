class ListingCategorySerializer < ActiveModel::Serializer

  attribute :id
  
  has_one :category

end

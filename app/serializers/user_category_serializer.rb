class UserCategorySerializer < ActiveModel::Serializer

  attribute :id
  
  has_one :category
  
end

class UserCategory < ApplicationRecord

  belongs_to :user
  belongs_to :category

  validates_uniqueness_of :category, scope: :user, message: "already added"

end

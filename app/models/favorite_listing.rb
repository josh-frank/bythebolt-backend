class FavoriteListing < ApplicationRecord

  belongs_to :user
  belongs_to :listing

  validates_uniqueness_of :user, scope: :listing, message: "already favorited this listing"

end

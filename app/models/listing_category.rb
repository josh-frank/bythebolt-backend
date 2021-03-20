class ListingCategory < ApplicationRecord

    belongs_to :listing
    belongs_to :category

    validates_uniqueness_of :category, scope: :listing, message: "already added"

end

class Category < ApplicationRecord

    has_many :user_categories
    has_many :users, through: :user_categories

    has_many :listing_categories
    has_many :listings, through: :listing_categories

end

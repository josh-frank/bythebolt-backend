class Listing < ApplicationRecord

  belongs_to :user

  has_many :listing_categories, dependent: :destroy
  has_many :categories, through: :listing_categories

  has_many :favorite_listings, dependent: :destroy
  has_many :favorited_users, through: :favorite_listings, source: :user

  validates_presence_of :title, :description, :quantity, :price

end

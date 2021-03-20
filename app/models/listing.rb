class Listing < ApplicationRecord

  belongs_to :user

  has_many :listing_categories
  has_many :categories, through: :listing_categories

  validates_presence_of :title, :description, :price

end

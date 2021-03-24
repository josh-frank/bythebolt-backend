class User < ApplicationRecord

    has_secure_password

    has_many :user_categories, dependent: :destroy
    has_many :categories, through: :user_categories

    has_many :listings, dependent: :destroy

    has_many :favorite_listings, dependent: :destroy
    has_many :favorites, through: :favorite_listings, source: :listing

    has_many :messages
    has_many :chats, through: :messages

    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :email,
        format: { with: URI::MailTo::EMAIL_REGEXP, message: "invalid"  },
        presence: true,
        uniqueness: { case_sensitive: false }

end

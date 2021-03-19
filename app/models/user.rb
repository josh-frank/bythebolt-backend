class User < ApplicationRecord

    has_secure_password

    has_many :user_categories
    has_many :categories, through: :user_categories
    has_many :listings

    validates :username, presence: true, uniqueness: { case_sensitive: false }
    validates :email,
        format: { with: URI::MailTo::EMAIL_REGEXP, message: "invalid"  },
        presence: true,
        uniqueness: { case_sensitive: false }

end

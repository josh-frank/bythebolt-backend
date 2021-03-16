class User < ApplicationRecord

    has_secure_password

    validates_uniqueness_of :username
    validates :email,
        format: { with: URI::MailTo::EMAIL_REGEXP, message: "invalid"  },
        presence: true,
        uniqueness: { case_sensitive: false }

end

class Message < ApplicationRecord

  belongs_to :chat
  belongs_to :user

  validates_presence_of :content

end

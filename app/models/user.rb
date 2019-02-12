class User < ApplicationRecord
	belongs_to :city
	has_many :gossips
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
  has_many :comments
  has_many :gossips,through: :comments
  has_many :likes
  has_secure_password
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome(self).deliver_now
  end

end

class User < ApplicationRecord
    has_many :messages
    has_many :received_chats, class_name: "Chat", foreign_key: "receiver_id"
    has_many :sent_chats, class_name: "Chat", foreign_key: "sender_id"
    validates :email, presence: true, uniqueness: true
end

class Gossip < ApplicationRecord
	belongs_to :user
	has_many :tagers
	has_many :tags, through: :tagers
	has_many :comments
	has_many :users, through: :comments
	has_many :likes
end

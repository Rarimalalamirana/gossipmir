class Gossip < ApplicationRecord
	belongs_to :user
	has_many :tagers
	has_many :tags, through: :tagers
end

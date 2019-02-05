class Tag < ApplicationRecord
	   has_many :tagers
	  has_many :gossips, through: :tagers

end

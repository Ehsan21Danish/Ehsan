class User < ApplicationRecord
	has_many :attendences
	has_many :leaves
end

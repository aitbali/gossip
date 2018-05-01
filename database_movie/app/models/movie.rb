class Movie < ApplicationRecord
	belongs_to :director, required: false
end

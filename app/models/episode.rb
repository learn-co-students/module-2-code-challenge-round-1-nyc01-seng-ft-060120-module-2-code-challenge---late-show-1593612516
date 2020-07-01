class Episode < ApplicationRecord
	has_many :appearances
	has_many :guests, through: :appearances

	def rating
		self.appearances.map do |app|
			@arr = app.rating
		end
	end

	def avg_rating
		rating.compact!
		rating.inject{ |sum, el| sum + el }.to_f / rating.size
	end
end

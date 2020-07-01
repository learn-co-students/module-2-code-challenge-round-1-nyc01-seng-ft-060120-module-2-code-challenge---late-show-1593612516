class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def average_rating
    # Return the sum if any ratings else 0
    ratings = self.appearances.map(&:rating)
    sum = ratings.sum()
    if sum > 0
      return (sum / ratings.size).to_f
    end
    0
  end

end

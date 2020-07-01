class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  def num_date
    "Episode #{number} - #{date}"
  end
  
end

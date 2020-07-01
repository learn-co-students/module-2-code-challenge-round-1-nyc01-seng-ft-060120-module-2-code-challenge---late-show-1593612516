class Episode < ApplicationRecord
  has_many :appearances
  has_many :guests, through: :appearances

  validates :number, uniqueness: :true
  validates :date, presence: true

  def appearances_ordered
    appearances.sort{ |a, b| b.rating <=> a.rating}
  end

  def average_rating
    ratings = appearances.map{ |a| a.rating}
    ratings.sum / ratings.count
  end

end

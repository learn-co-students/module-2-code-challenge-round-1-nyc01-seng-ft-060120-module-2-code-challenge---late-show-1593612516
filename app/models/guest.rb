class Guest < ApplicationRecord

  has_many :appearances
  has_many :episodes, through: :appearances


  def appearances_ordered
    appearances.sort_by { |a| a.rating}
  end

end

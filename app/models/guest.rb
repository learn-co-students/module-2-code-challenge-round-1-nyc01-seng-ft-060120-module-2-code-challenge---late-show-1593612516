class Guest < ApplicationRecord
  has_many :appearances
  has_many :episodes, through: :appearances

  def sorted_apperances
    self.appearances.sort_by do |appearance|
      appearance.episode.average_rating
    end.reverse
  end
end

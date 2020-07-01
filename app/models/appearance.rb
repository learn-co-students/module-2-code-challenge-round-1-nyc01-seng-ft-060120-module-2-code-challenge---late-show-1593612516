class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, presence: true
  validates :rating, numericality: true
  validates :rating, inclusion: {in: (1..5) }
end

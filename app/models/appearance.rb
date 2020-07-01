class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, presence: true
  validates :rating, numericality: true
  validates :rating, inclusion: {in: (1..5) }
  validates :guest_id, uniqueness: {scope: :episode_id, message: "can only appear once per episode"}

  
end

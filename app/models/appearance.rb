class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, presence: true, numericality: {only_integer: true, greater_than: 0, less_than: 6}
  
  def episode_date 
    episode.date
  end
  
  
end

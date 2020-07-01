class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :rating, numericality: {only_integer: true, less_than: 6, more_than: 0 }

    validates :guest_id, uniqueness: { scope: :episode_id, message: "that guest is already included."}

  def appearances_ordered
    appearances.sort_by { |a| a.rating}
  end

### 7. Advanced: Episode Average Rating

# On the Episode show page, show the average # rating of the Appearances for the episode.
end

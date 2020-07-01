class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def sorted_episodes
        self.episodes.sort_by{|e| e.find_rating(self)}.reverse!
    end
end

class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances


    def episode_date_and_rating
        self.appearances.each do |appearance|
            self.episodes.each do |episode|
                if appearance.episode_id == episode.id 
                    return "#{episode.date}, #{appearance.rating}"
                end
            end
        end
    end

end

class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def appearance_rating
        self.appearance.rating
    end

    # def episode_date_and_rating
    #     byebug
    #     episode = self.episodes.each do |episode|
    #         episode
    #     end
    #     appearance = self.appearances.each do |appearance|
    #         appearance
    #     end
    #     if episode.id = appearance.episode.id
    #         puts "#{episode.date}, #{appearance.rating}"
    #     end
    # end

end

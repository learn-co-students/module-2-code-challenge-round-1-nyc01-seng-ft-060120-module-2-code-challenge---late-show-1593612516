class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def episode_helper
        Appearance.all.select {|a| a.guest == self }
    end 
    
    def episode_and_rating
        episode_helper.map{|f| "Episode: #{f.episode_id} - Rating: #{f.rating}"}
    end 

end

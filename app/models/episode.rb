class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        total_rating = self.appearances.sum do |appearance|
            appearance.rating
        end
        total_rating/self.appearances.count
    end
end

class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def guest_rating
        self.appearances.map do |appearance|
            appearance.rating
        end
    end
end

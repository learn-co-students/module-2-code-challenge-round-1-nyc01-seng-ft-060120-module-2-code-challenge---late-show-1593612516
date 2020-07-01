class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def find_rating(guest)
        self.appearances.find_by(guest: guest).rating
    end

    def avg_rating
        if self.appearances.count == 0
            nil
        else
            self.appearances.map do |appear|
                appear.rating
            end.sum/self.appearances.count
        end
    end
end

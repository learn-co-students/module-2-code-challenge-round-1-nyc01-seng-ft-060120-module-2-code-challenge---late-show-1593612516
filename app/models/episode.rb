class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
        average = 0
        if self.appearances != []
            self.appearances.each do |a|
                average += a.rating
            end
            average = average/self.appearances.count
        else
            return nil
        end
    end
end

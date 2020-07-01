class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def avg_rating
    a = self.appearances.map do |appearance|
        appearance.rating
    end
    if a.sum(0.0) > 0
        a.sum(0.0) / a.size.to_f
    end
    end

end

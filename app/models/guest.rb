class Guest < ApplicationRecord
    has_many :appearances
    has_many :episodes, through: :appearances

    def appearance_sort
        self.appearances.sort_by{|appearance| appearance.rating}
    end
end

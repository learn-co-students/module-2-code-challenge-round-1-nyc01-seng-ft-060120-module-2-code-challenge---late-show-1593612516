class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def appearances_helper
        Appearance.all.select {|a| a.episode == self }
    end 

    def guest_name
        appearances_helper.map {|a| a.guest.name }
    end 

end

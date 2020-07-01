class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :rating, :inclusion => 1..5
    validate :guest_cannot_appear_more_than_once


    def guest_cannot_appear_more_than_once
        errors.add(:guest, "cannot appear more than once") if Appearance.where({guest: guest, episode: episode}).exists?
    end
end

class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest
    validates :rating, :inclusion => 1..5
    # validates (:episode,:guest), uniqueness: { scope: [:guest_id, :episode_id] }
end

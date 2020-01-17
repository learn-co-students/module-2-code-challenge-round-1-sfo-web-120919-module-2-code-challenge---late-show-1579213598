class Appearance < ApplicationRecord
    belongs_to :guest
    belongs_to :episode
    validates :guest, presence: true
    validates :guest, uniqueness: {scope: :episode}
    validates :episode, presence: true
    validates :rating, presence: true, allow_blank: false
    validates_inclusion_of :rating, :in => 1..5
end

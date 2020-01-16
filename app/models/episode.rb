class Episode < ApplicationRecord
    has_one :appearance
    has_many :guests, through: :appearances

end

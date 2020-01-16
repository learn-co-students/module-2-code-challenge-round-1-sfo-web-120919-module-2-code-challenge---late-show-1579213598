class Guest < ApplicationRecord
    has_one :appearance
    has_many :episodes, through: :appearances

end

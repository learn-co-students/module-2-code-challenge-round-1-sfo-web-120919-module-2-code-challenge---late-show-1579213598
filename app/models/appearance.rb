class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest

    
    validates :rating, presence: true
    validates :rating, numericality: { great_than: 0, less_than: 6 }

end
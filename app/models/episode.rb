class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def average_rating
 
        if appearances.any?
          1.0 * appearances.sum {|appearance| appearance.rating } / appearances.count
        end 

    end 
end

class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances

    def find_rate
        rate = 0
       app = Appearance.all
       app.each do |a|
            if a.episode == self
                rate = a.rating
            end
       end
       rate
    end
end

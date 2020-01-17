class Episode < ApplicationRecord
    has_many :appearances
    has_many :guests, through: :appearances
    validates_presence_of :date, uniqueness: true


     #def only_once
        #method where A Guest should only appear on a given Episode once.
        
    #end

end
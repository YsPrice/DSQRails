class Album < ApplicationRecord
    belongs_to :artist
    has_many :singles, :dependent => :destroy
    
end

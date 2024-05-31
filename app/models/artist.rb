class Artist < ApplicationRecord
    has_many :albums, :dependent => :destroy
    has_many :singles, :dependent => :destroy
end

class Single < ApplicationRecord
    belongs_to :artist
    belongs_to :album, optional: true
end

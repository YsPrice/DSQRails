class AddReferencesToSingles < ActiveRecord::Migration[7.0]
  def change
    add_reference :singles, :artist, null: false, foreign_key: true
    add_reference :singles, :album, null: true, foreign_key: true
  end
end
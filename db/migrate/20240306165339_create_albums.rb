class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.integer :num_of_songs
      t.string :song_info
      t.string :release_date

      t.timestamps
    end
  end
end

class RemoveSongInfoFromAlbums < ActiveRecord::Migration[7.0]
  def change
    remove_column :albums, :song_info
  end
end

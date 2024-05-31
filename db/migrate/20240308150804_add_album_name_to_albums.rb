class AddAlbumNameToAlbums < ActiveRecord::Migration[7.0]
  def change
    add_column :albums, :album_name, :string
  end
end

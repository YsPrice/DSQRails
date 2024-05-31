class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :artist_photo
      t.string :artist_name
      t.string :artist_website
      t.string :artist_social_media
      t.date :start_date
      t.date :end_date
      t.string :bio

      t.timestamps
    end
  end
end

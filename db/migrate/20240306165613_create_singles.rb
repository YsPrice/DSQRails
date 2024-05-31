class CreateSingles < ActiveRecord::Migration[7.0]
  def change
    create_table :singles do |t|
      t.string :song_name
      t.string :release_date
      t.string :song_info

      t.timestamps
    end
  end
end

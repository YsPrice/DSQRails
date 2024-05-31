class AddPhotoToSingle < ActiveRecord::Migration[7.0]
  def change
    add_column :singles, :cover_photo, :string
  end
end

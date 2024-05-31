class AddAudioToSingles < ActiveRecord::Migration[7.0]
  def change
    add_column :singles, :audio, :string
  end
end

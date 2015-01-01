class AddWordsToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :start_word, :string
    add_column :tracks, :end_word, :string
  end
end

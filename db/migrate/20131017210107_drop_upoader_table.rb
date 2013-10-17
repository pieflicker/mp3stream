class DropUpoaderTable < ActiveRecord::Migration
  def change
    drop_table :song_uploader
  end
end

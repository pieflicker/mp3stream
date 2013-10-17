class CreateSongs < ActiveRecord::Migration
  def change
    create_table "songs", force: true do |t|
    t.string   "artist"
    t.string   "track"
    t.string   "album"
    t.float    "length",      limit: 255
    t.string   "bitrate"
    t.string   "song_hash"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "attachment"
    t.integer  "uploader_id"
    t.integer  "user_id"
  end
    
  end
end

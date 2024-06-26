# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_03_11_195354) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "albums", force: :cascade do |t|
    t.integer "num_of_songs"
    t.string "release_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "album_cover"
    t.bigint "artist_id", null: false
    t.string "album_name"
    t.index ["artist_id"], name: "index_albums_on_artist_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "artist_photo"
    t.string "artist_name"
    t.string "artist_website"
    t.string "artist_social_media"
    t.date "start_date"
    t.date "end_date"
    t.string "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "singles", force: :cascade do |t|
    t.string "song_name"
    t.string "release_date"
    t.string "song_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "cover_photo"
    t.bigint "artist_id", null: false
    t.bigint "album_id"
    t.string "audio"
    t.index ["album_id"], name: "index_singles_on_album_id"
    t.index ["artist_id"], name: "index_singles_on_artist_id"
  end

  add_foreign_key "albums", "artists"
  add_foreign_key "singles", "albums"
  add_foreign_key "singles", "artists"
end

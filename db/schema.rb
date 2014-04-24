# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140424082515) do

  create_table "musicfeeds", force: true do |t|
    t.string   "wrapperType"
    t.string   "kind"
    t.integer  "artistId"
    t.integer  "collectionId"
    t.integer  "trackId"
    t.string   "artistName"
    t.text     "collectionName"
    t.string   "trackName"
    t.text     "collectionCensoredName"
    t.string   "trackCensoredName"
    t.string   "artistViewUrl"
    t.string   "collectionViewUrl"
    t.string   "trackViewUrl"
    t.string   "previewUrl"
    t.string   "artworkUrl30"
    t.string   "artworkUrl60"
    t.string   "artworkUrl100"
    t.decimal  "collectionPrice",        precision: 10, scale: 0
    t.decimal  "trackPrice",             precision: 10, scale: 0
    t.datetime "releaseDate"
    t.string   "collectionExplicitness"
    t.string   "trackExplicitness"
    t.integer  "discCount"
    t.integer  "discNumber"
    t.integer  "trackCount"
    t.integer  "trackNumber"
    t.integer  "trackTimeMillis"
    t.string   "country"
    t.string   "currency"
    t.string   "primaryGenreName"
    t.string   "radioStationUrl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

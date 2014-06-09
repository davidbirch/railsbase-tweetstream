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

ActiveRecord::Schema.define(version: 20140607054303) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "subject_id"
    t.string   "subject_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_filters", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "filter_id"
  end

  create_table "categories_keywords", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "keyword_id"
  end

  create_table "categories_tweets", id: false, force: true do |t|
    t.integer "category_id"
    t.integer "tweet_id"
  end

  create_table "filters", force: true do |t|
    t.integer  "filter_value", limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "keywords", force: true do |t|
    t.string   "keyword_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "raw_tweets", force: true do |t|
    t.text     "raw"
    t.integer  "tweet_guid", limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: true do |t|
    t.string   "name",                        null: false
    t.string   "slug"
    t.integer  "tweet_id"
    t.boolean  "common_word", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tweets", force: true do |t|
    t.string   "tweet_text"
    t.datetime "tweet_created_at"
    t.integer  "tweet_guid",       limit: 8
    t.string   "tweet_source"
    t.integer  "twitter_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "twitter_users", force: true do |t|
    t.string   "name"
    t.string   "screen_name"
    t.integer  "user_guid",                    limit: 8
    t.string   "profile_background_image_url"
    t.integer  "followers_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

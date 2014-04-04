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

ActiveRecord::Schema.define(version: 20140404094737) do

  create_table "challenges", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "game_details", force: true do |t|
    t.integer  "game_id"
    t.integer  "question_id"
    t.integer  "status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "game_details", ["game_id"], name: "index_game_details_on_game_id"
  add_index "game_details", ["question_id"], name: "index_game_details_on_question_id"
  add_index "game_details", ["status_id"], name: "index_game_details_on_status_id"

  create_table "game_moves", force: true do |t|
    t.text     "description",  null: false
    t.text     "code",         null: false
    t.integer  "game_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "game_moves", ["game_type_id"], name: "index_game_moves_on_game_type_id"

  create_table "game_types", force: true do |t|
    t.string   "title",      null: false
    t.integer  "max_score",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.integer  "user_id"
    t.integer  "game_type_id"
    t.boolean  "completed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "games", ["game_type_id"], name: "index_games_on_game_type_id"
  add_index "games", ["user_id"], name: "index_games_on_user_id"

  create_table "levels", force: true do |t|
    t.text     "level",        null: false
    t.integer  "game_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "levels", ["game_type_id"], name: "index_levels_on_game_type_id"

  create_table "questions", force: true do |t|
    t.text     "title",        null: false
    t.text     "scenario",     null: false
    t.text     "answer",       null: false
    t.integer  "game_type_id"
    t.integer  "game_move_id"
    t.integer  "level_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "questions", ["game_move_id"], name: "index_questions_on_game_move_id"
  add_index "questions", ["game_type_id"], name: "index_questions_on_game_type_id"
  add_index "questions", ["level_id"], name: "index_questions_on_level_id"

  create_table "statuses", force: true do |t|
    t.text     "status",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

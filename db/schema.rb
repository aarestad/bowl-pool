# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_26_021118) do

  create_table "bowl_games", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bowl_matchups", force: :cascade do |t|
    t.integer "year"
    t.integer "bowl_game_id", null: false
    t.integer "away_team_id", null: false
    t.integer "home_team_id", null: false
    t.integer "home_team_point_spread"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["away_team_id"], name: "index_bowl_matchups_on_away_team_id"
    t.index ["bowl_game_id"], name: "index_bowl_matchups_on_bowl_game_id"
    t.index ["home_team_id"], name: "index_bowl_matchups_on_home_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "abbrev"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "bowl_matchups", "bowl_games"
  add_foreign_key "bowl_matchups", "teams", column: "away_team_id"
  add_foreign_key "bowl_matchups", "teams", column: "home_team_id"
end

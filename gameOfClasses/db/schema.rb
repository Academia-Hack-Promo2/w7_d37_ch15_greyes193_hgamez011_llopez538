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

ActiveRecord::Schema.define(version: 20150410201819) do

  create_table "armors", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "pType",      limit: 1
    t.string   "wType",      limit: 255
    t.integer  "damage",     limit: 3
    t.integer  "defence",    limit: 4
    t.integer  "price",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "attacks", force: :cascade do |t|
    t.string   "aType",        limit: 255
    t.string   "name",         limit: 255
    t.integer  "damage",       limit: 4
    t.integer  "character_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "attacks", ["character_id"], name: "index_attacks_on_character_id", using: :btree

  create_table "character_armors", force: :cascade do |t|
    t.integer  "character_id", limit: 4
    t.integer  "armor_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "character_armors", ["armor_id"], name: "index_character_armors_on_armor_id", using: :btree
  add_index "character_armors", ["character_id"], name: "index_character_armors_on_character_id", using: :btree

  create_table "character_weapons", force: :cascade do |t|
    t.integer  "character_id", limit: 4
    t.integer  "weapon_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "character_weapons", ["character_id"], name: "index_character_weapons_on_character_id", using: :btree
  add_index "character_weapons", ["weapon_id"], name: "index_character_weapons_on_weapon_id", using: :btree

  create_table "characters", force: :cascade do |t|
    t.string   "pType",      limit: 1
    t.integer  "vitality",   limit: 8
    t.integer  "lifePoints", limit: 8
    t.string   "hability",   limit: 255
    t.integer  "level",      limit: 2
    t.integer  "defPoints",  limit: 4
    t.integer  "atkPoints",  limit: 4
    t.integer  "player_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "characters", ["player_id"], name: "index_characters_on_player_id", using: :btree

  create_table "fights", force: :cascade do |t|
    t.integer  "vitality1",     limit: 8
    t.integer  "vitality2",     limit: 8
    t.integer  "winner",        limit: 4
    t.boolean  "retired",       limit: 1
    t.integer  "character1_id", limit: 4
    t.integer  "character2_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "fights", ["character1_id"], name: "fk_rails_cbea561483", using: :btree
  add_index "fights", ["character2_id"], name: "fk_rails_aa17736ad2", using: :btree

  create_table "players", force: :cascade do |t|
    t.string   "name",       limit: 20
    t.integer  "age",        limit: 2
    t.integer  "vitality",   limit: 8
    t.integer  "lifePoints", limit: 8
    t.string   "hability",   limit: 255
    t.integer  "defPoints",  limit: 4
    t.integer  "atkPoints",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "wType",      limit: 255
    t.integer  "damage",     limit: 4
    t.integer  "defence",    limit: 3
    t.integer  "price",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "attacks", "characters"
  add_foreign_key "character_armors", "armors"
  add_foreign_key "character_armors", "characters"
  add_foreign_key "character_weapons", "characters"
  add_foreign_key "character_weapons", "weapons"
  add_foreign_key "characters", "players"
  add_foreign_key "fights", "characters", column: "character1_id"
  add_foreign_key "fights", "characters", column: "character2_id"
end

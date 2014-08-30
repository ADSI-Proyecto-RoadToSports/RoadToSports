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

ActiveRecord::Schema.define(version: 20140828092036) do

  create_table "activities", force: true do |t|
    t.string   "name"
    t.boolean  "state"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "albums", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "configurations", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "typeconfiguration_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "configurations", ["typeconfiguration_id"], name: "index_configurations_on_typeconfiguration_id"
  add_index "configurations", ["user_id"], name: "index_configurations_on_user_id"

  create_table "constituents", force: true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "identification"
    t.date     "birthday"
    t.string   "mail"
    t.string   "address"
    t.string   "phone"
    t.boolean  "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "document_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fch_lg_matches", force: true do |t|
    t.date     "startdate"
    t.date     "endingdate"
    t.string   "place"
    t.text     "description"
    t.string   "team"
    t.integer  "tournament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fch_lg_matches", ["tournament_id"], name: "index_fch_lg_matches_on_tournament_id"

  create_table "galleries", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "album_id"
  end

  create_table "information", force: true do |t|
    t.text     "description"
    t.boolean  "state"
    t.integer  "typeinformation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "information", ["typeinformation_id"], name: "index_information_on_typeinformation_id"

  create_table "inicios", force: true do |t|
    t.string   "index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "integrantes", force: true do |t|
    t.string   "nombre"
    t.integer  "document_type_id"
    t.string   "documento"
    t.string   "ficha"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "limite",           default: false
  end

  create_table "matches", force: true do |t|
    t.string   "teamA"
    t.string   "teamB"
    t.integer  "modalitie_id"
    t.integer  "tournament_id"
    t.integer  "score_id"
    t.integer  "fchlgmatch_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["fchlgmatch_id"], name: "index_matches_on_fchlgmatch_id"
  add_index "matches", ["modalitie_id"], name: "index_matches_on_modalitie_id"
  add_index "matches", ["score_id"], name: "index_matches_on_score_id"
  add_index "matches", ["tournament_id"], name: "index_matches_on_tournament_id"

  create_table "modalities", force: true do |t|
    t.string   "players"
    t.integer  "activity_id"
    t.integer  "tournament_id"
    t.integer  "modalities_type_id"
    t.integer  "sport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modalities", ["activity_id"], name: "index_modalities_on_activity_id"
  add_index "modalities", ["modalities_type_id"], name: "index_modalities_on_modalities_type_id"
  add_index "modalities", ["sport_id"], name: "index_modalities_on_sport_id"
  add_index "modalities", ["tournament_id"], name: "index_modalities_on_tournament_id"

  create_table "modalities_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "novelties", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preferences", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "typepreference_id"
    t.integer  "session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "preferences", ["session_id"], name: "index_preferences_on_session_id"
  add_index "preferences", ["typepreference_id"], name: "index_preferences_on_typepreference_id"

  create_table "roadtosports", force: true do |t|
    t.string   "registros"
    t.string   "index"
    t.string   "acerca"
    t.string   "contacto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rules", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scores", force: true do |t|
    t.text     "description"
    t.date     "datescore"
    t.integer  "modalitie_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scores", ["modalitie_id"], name: "index_scores_on_modalitie_id"
  add_index "scores", ["team_id"], name: "index_scores_on_team_id"

  create_table "sessions", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["user_id"], name: "index_sessions_on_user_id"

  create_table "sports", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "modalitiestype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "nombre"
    t.integer  "sport_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active"
  end

  create_table "tipos_configs", force: true do |t|
    t.string   "index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tournaments", force: true do |t|
    t.string   "name"
    t.integer  "modalitiestype_id"
    t.boolean  "state"
    t.date     "date"
    t.integer  "typetournament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sport_id"
  end

  create_table "type_configurations", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_informations", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_preferences", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_rules", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_tournaments", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end

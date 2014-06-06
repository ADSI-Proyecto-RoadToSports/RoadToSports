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

ActiveRecord::Schema.define(version: 20140606093420) do

  create_table "acceptances", force: true do |t|
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "acceptances", ["user_id"], name: "index_acceptances_on_user_id"

  create_table "activities", force: true do |t|
    t.string   "name"
    t.boolean  "state"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "configurations", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "type_configuration_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "configurations", ["type_configuration_id"], name: "index_configurations_on_type_configuration_id"
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

  create_table "fch_lg_matches", force: true do |t|
    t.date     "strart_date"
    t.date     "ending_date"
    t.string   "place"
    t.text     "description"
    t.string   "team"
    t.integer  "tournament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fch_lg_matches", ["tournament_id"], name: "index_fch_lg_matches_on_tournament_id"

  create_table "information", force: true do |t|
    t.text     "description"
    t.boolean  "state"
    t.integer  "type_information_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "information", ["type_information_id"], name: "index_information_on_type_information_id"

  create_table "inicios", force: true do |t|
    t.string   "index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.string   "team_a"
    t.string   "team_b"
    t.integer  "modalitie_id"
    t.integer  "tournament_id"
    t.integer  "score_id"
    t.integer  "fch_lg_match_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "matches", ["fch_lg_match_id"], name: "index_matches_on_fch_lg_match_id"
  add_index "matches", ["modalitie_id"], name: "index_matches_on_modalitie_id"
  add_index "matches", ["score_id"], name: "index_matches_on_score_id"
  add_index "matches", ["tournament_id"], name: "index_matches_on_tournament_id"

  create_table "modalities", force: true do |t|
    t.string   "name"
    t.string   "players"
    t.integer  "activity_id"
    t.integer  "tournament_id"
    t.integer  "modalities_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modalities", ["activity_id"], name: "index_modalities_on_activity_id"
  add_index "modalities", ["modalities_type_id"], name: "index_modalities_on_modalities_type_id"
  add_index "modalities", ["tournament_id"], name: "index_modalities_on_tournament_id"

  create_table "modalities_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "new_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "new_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "news", ["new_type_id"], name: "index_news_on_new_type_id"

  create_table "novelties", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "new_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "novelties", ["new_type_id"], name: "index_novelties_on_new_type_id"

  create_table "pre_registrations", force: true do |t|
    t.string   "name"
    t.string   "modalities"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "tournament_id"
    t.integer  "acceptance_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pre_registrations", ["acceptance_id"], name: "index_pre_registrations_on_acceptance_id"
  add_index "pre_registrations", ["tournament_id"], name: "index_pre_registrations_on_tournament_id"
  add_index "pre_registrations", ["user_id"], name: "index_pre_registrations_on_user_id"

  create_table "preferences", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "type_preference_id"
    t.integer  "session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "preferences", ["session_id"], name: "index_preferences_on_session_id"
  add_index "preferences", ["type_preference_id"], name: "index_preferences_on_type_preference_id"

  create_table "rules", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.boolean  "state"
    t.integer  "type_rule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rules", ["type_rule_id"], name: "index_rules_on_type_rule_id"

  create_table "scores", force: true do |t|
    t.text     "description"
    t.date     "date_score"
    t.integer  "modalitie_id"
    t.integer  "team_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scores", ["modalitie_id"], name: "index_scores_on_modalitie_id"
  add_index "scores", ["team_id"], name: "index_scores_on_team_id"

  create_table "sports", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "modalitie_id"
    t.integer  "rule_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sports", ["modalitie_id"], name: "index_sports_on_modalitie_id"
  add_index "sports", ["rule_id"], name: "index_sports_on_rule_id"

  create_table "teams", force: true do |t|
    t.string   "name"
    t.integer  "modalities_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["modalities_id"], name: "index_teams_on_modalities_id"

  create_table "tournaments", force: true do |t|
    t.string   "name"
    t.string   "modalities"
    t.boolean  "state"
    t.date     "date"
    t.integer  "type_tournament_id"
    t.integer  "acceptance_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tournaments", ["acceptance_id"], name: "index_tournaments_on_acceptance_id"
  add_index "tournaments", ["type_tournament_id"], name: "index_tournaments_on_type_tournament_id"

  create_table "type_changes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "type_roles", force: true do |t|
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
    t.string   "name"
    t.string   "apellido"
    t.string   "identification"
    t.date     "birthday"
    t.string   "mail"
    t.string   "password"
    t.string   "address"
    t.string   "phone"
    t.boolean  "gender"
    t.string   "picture"
    t.integer  "document_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["document_type_id"], name: "index_users_on_document_type_id"

end

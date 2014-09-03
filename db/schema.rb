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

ActiveRecord::Schema.define(version: 20140903194236) do

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

  create_table "galleries", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "album_id"
  end

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

  create_table "modalities_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nombrepartidos", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "novelties", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pfutbols", force: true do |t|
    t.string   "equipo1"
    t.integer  "puntos2"
    t.boolean  "gano1"
    t.string   "equipo2"
    t.boolean  "gano2"
    t.datetime "fecha"
    t.boolean  "estado"
    t.integer  "user_id"
    t.integer  "tournament_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.boolean  "admin"
    t.boolean  "usuario"
    t.boolean  "invitado"
  end

end

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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20151109113202) do
=======
ActiveRecord::Schema.define(version: 20151110014443) do
>>>>>>> 1275cf3f9cbe1ea3df816402e16f2e2c1f25a07e

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "adminpack"

  create_table "couch_types", force: true do |t|
    t.string   "nombre"
    t.boolean  "activo",     default: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

<<<<<<< HEAD
=======
  add_index "controllers", ["email"], name: "index_controllers_on_email", unique: true, using: :btree
  add_index "controllers", ["reset_password_token"], name: "index_controllers_on_reset_password_token", unique: true, using: :btree

  create_table "couches", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.string   "lugar"
    t.integer  "puntuacion"
    t.boolean  "disponibilidad"
    t.integer  "capacidad"
    t.integer  "usuario_id"
    t.string   "imagen",         default: "http://static.tumblr.com/5473d74e35693e4a261933b04b13080e/vhrhomj/eAknuqhz5/tumblr_static_7fu7jer965gk4w4cok4ooo4cw_2048_v2.png"
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cuentapremia", force: true do |t|
    t.string   "banco"
    t.string   "tarjeta"
    t.string   "numeroTarjeta"
    t.integer  "codigoSeguridad"
    t.integer  "mesVencimiento"
    t.integer  "yearVencimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "datos_premia", force: true do |t|
    t.string   "banco"
    t.string   "tarjeta"
    t.integer  "numeroTarjeta"
    t.integer  "codigoSeguridad"
    t.integer  "mesVencimiento"
    t.integer  "yearVencimiento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

>>>>>>> 1275cf3f9cbe1ea3df816402e16f2e2c1f25a07e
  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "nombre"
    t.string   "apellido"
    t.string   "nombreUsuario"
    t.date     "fechaNac"
    t.string   "nacionalidad"
    t.string   "sexo"
    t.boolean  "esPremium"
    t.boolean  "masculino",              default: false
    t.string   "esAdmin"
    t.string   "boolean"
    t.string   "fechaPremium"
    t.string   "datetime"
    t.date     "fechaNacimiento"
    t.time     "nacimiento"
    t.integer  "puntaje"
    t.string   "foto"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

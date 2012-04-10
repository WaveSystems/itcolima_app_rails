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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120410211426) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "alumnos", :force => true do |t|
    t.string   "no_control"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "nombre"
    t.integer  "idstatus"
    t.integer  "idplan"
    t.integer  "idespecialidad"
    t.string   "periodoing"
    t.string   "periodoeg"
    t.integer  "idescuela"
    t.string   "idusuario"
    t.string   "idlocalidadd"
    t.string   "idmunicipiod"
    t.string   "idmunicipion"
    t.string   "idestadon"
    t.string   "idestadod"
    t.string   "idpaisn"
    t.string   "idpaisd"
    t.integer  "tutor"
    t.integer  "madre"
    t.integer  "padre"
    t.integer  "idsexo"
    t.integer  "idestadocivil"
    t.integer  "idareaegresoproc"
    t.string   "calle"
    t.string   "numext"
    t.string   "numint"
    t.string   "colonia"
    t.string   "cp"
    t.string   "email"
    t.datetime "fechanac"
    t.string   "curp"
    t.string   "rfc"
    t.string   "telefono1"
    t.string   "telefono2"
    t.string   "imagen"
    t.integer  "semestre"
    t.integer  "maxperiodos"
    t.integer  "promediobach"
    t.datetime "anioegbach"
    t.integer  "serviciomedico"
    t.string   "institucion"
    t.string   "numerosm"
    t.string   "tiposangre"
    t.string   "seguros"
    t.integer  "idempresa"
    t.integer  "idtecnologico"
    t.string   "titulo"
    t.date     "fecha_ti"
    t.string   "op_titulo"
    t.string   "finado"
    t.string   "encuesta"
    t.date     "fecha_enc"
    t.string   "actualizo"
    t.date     "fecha_act"
    t.string   "password"
    t.integer  "actualizado"
    t.float    "promedio"
    t.integer  "matricula"
    t.string   "no_ife"
    t.text     "expectativa"
    t.string   "carrera"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "proyecto_id"
    t.boolean  "finished",         :default => false
  end

  create_table "asesors", :force => true do |t|
    t.string   "titulo"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "nombre"
    t.string   "departamento"
    t.string   "no_ife"
    t.string   "email"
    t.string   "curp"
    t.string   "nivel_academico"
    t.string   "tipo_asesor"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "proyecto_id"
  end

  create_table "proyectos", :force => true do |t|
    t.string   "categoria"
    t.string   "nombre"
    t.string   "area_participacion"
    t.text     "objetivo"
    t.text     "innovacion"
    t.text     "resultados_esperados"
    t.integer  "numero_de_autores"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.integer  "numero_asesores"
    t.boolean  "finished",             :default => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "username",               :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end

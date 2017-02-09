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

ActiveRecord::Schema.define(version: 20170209175956) do

  create_table "ators", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categoria", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nome",        limit: 255
    t.string   "telefone",    limit: 255
    t.string   "endereco",    limit: 255
    t.string   "observacoes", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "dvds", force: :cascade do |t|
    t.integer  "filme_id",    limit: 4
    t.string   "observacoes", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "dvds", ["filme_id"], name: "index_dvds_on_filme_id", using: :btree

  create_table "emprestimos", force: :cascade do |t|
    t.integer  "cliente_id",     limit: 4
    t.integer  "dvd_id",         limit: 4
    t.datetime "data_retirada"
    t.datetime "date_devolucao"
    t.string   "observacoes",    limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "emprestimos", ["cliente_id"], name: "index_emprestimos_on_cliente_id", using: :btree
  add_index "emprestimos", ["dvd_id"], name: "index_emprestimos_on_dvd_id", using: :btree

  create_table "filmes", force: :cascade do |t|
    t.string   "titulo",      limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "filmes_ators", force: :cascade do |t|
    t.integer  "filme_id",   limit: 4
    t.integer  "ator_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "filmes_ators", ["ator_id"], name: "index_filmes_ators_on_ator_id", using: :btree
  add_index "filmes_ators", ["filme_id"], name: "index_filmes_ators_on_filme_id", using: :btree

  add_foreign_key "dvds", "filmes"
  add_foreign_key "emprestimos", "clientes"
  add_foreign_key "emprestimos", "dvds"
  add_foreign_key "filmes_ators", "ators"
  add_foreign_key "filmes_ators", "filmes"
end

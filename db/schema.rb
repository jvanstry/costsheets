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

ActiveRecord::Schema.define(version: 20150917213057) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.datetime "date"
    t.string   "customer"
    t.string   "po"
    t.string   "worktype"
    t.text     "descript_if_other"
    t.string   "location"
    t.string   "from"
    t.string   "to"
    t.text     "notes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "material_suppliers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "material_suppliers_jobs", force: :cascade do |t|
    t.text    "work_description"
    t.integer "material_supplier_id"
    t.integer "job_id"
  end

  add_index "material_suppliers_jobs", ["job_id"], name: "index_material_suppliers_jobs_on_job_id", using: :btree
  add_index "material_suppliers_jobs", ["material_supplier_id"], name: "index_material_suppliers_jobs_on_material_supplier_id", using: :btree

  create_table "sub_contractors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_contractors_jobs", force: :cascade do |t|
    t.text    "work_description"
    t.integer "sub_contractor_id"
    t.integer "job_id"
  end

  add_index "sub_contractors_jobs", ["job_id"], name: "index_sub_contractors_jobs_on_job_id", using: :btree
  add_index "sub_contractors_jobs", ["sub_contractor_id"], name: "index_sub_contractors_jobs_on_sub_contractor_id", using: :btree

  create_table "truckers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "truckers_jobs", force: :cascade do |t|
    t.integer "num_trucks"
    t.integer "trucker_id"
    t.integer "job_id"
  end

  add_index "truckers_jobs", ["job_id"], name: "index_truckers_jobs_on_job_id", using: :btree
  add_index "truckers_jobs", ["trucker_id"], name: "index_truckers_jobs_on_trucker_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.string   "password_confirmation"
    t.boolean  "is_admin"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

end

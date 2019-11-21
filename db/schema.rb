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

ActiveRecord::Schema.define(version: 2019_11_21_022810) do

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.boolean "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_admins_on_authentication_token", unique: true
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "bug_requests", force: :cascade do |t|
    t.string "title"
    t.string "category"
    t.string "repository_link"
    t.string "live_link"
    t.string "status"
    t.integer "project_id", null: false
    t.integer "hunter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "point"
    t.string "linkcalculation"
    t.index ["hunter_id"], name: "index_bug_requests_on_hunter_id"
    t.index ["project_id"], name: "index_bug_requests_on_project_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "cnpj"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "password"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_companies_on_authentication_token", unique: true
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "hunters", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "cpf"
    t.string "phone"
    t.string "link1"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "password"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_hunters_on_authentication_token", unique: true
    t.index ["email"], name: "index_hunters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_hunters_on_reset_password_token", unique: true
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "link1"
    t.text "link2"
    t.string "category"
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_projects_on_company_id"
  end

  create_table "rewards", force: :cascade do |t|
    t.string "type"
    t.string "value"
    t.integer "bugrequest_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bugrequest_id"], name: "index_rewards_on_bugrequest_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.integer "company_id", null: false
    t.integer "hunter_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["hunter_id"], name: "index_users_on_hunter_id"
  end

  add_foreign_key "bug_requests", "hunters"
  add_foreign_key "bug_requests", "projects"
  add_foreign_key "projects", "companies"
  add_foreign_key "rewards", "bugrequests"
  add_foreign_key "users", "companies"
  add_foreign_key "users", "hunters"
end

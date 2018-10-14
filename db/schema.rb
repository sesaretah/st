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

ActiveRecord::Schema.define(version: 20181014144020) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "certifications", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "companies", force: :cascade do |t|
    t.text     "headquarter_address", limit: 65535
    t.text     "shop_address",        limit: 65535
    t.text     "factory_address",     limit: 65535
    t.string   "telphone",            limit: 255
    t.string   "fax",                 limit: 255
    t.string   "email",               limit: 255
    t.string   "telegram_channel",    limit: 255
    t.string   "instagram_page",      limit: 255
    t.string   "year_established",    limit: 255
    t.string   "total_employees",     limit: 255
    t.integer  "user_id",             limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "name",                limit: 255
    t.string   "logo_file_name",      limit: 255
    t.string   "logo_content_type",   limit: 255
    t.integer  "logo_file_size",      limit: 8
    t.datetime "logo_updated_at"
    t.text     "about_us",            limit: 65535
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name",              limit: 255
    t.integer  "company_id",        limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "logo_file_name",    limit: 255
    t.string   "logo_content_type", limit: 255
    t.integer  "logo_file_size",    limit: 8
    t.datetime "logo_updated_at"
    t.integer  "product_id",        limit: 4
    t.string   "phone_number",      limit: 255
  end

  create_table "earnings", force: :cascade do |t|
    t.integer  "certification_id", limit: 4
    t.integer  "company_id",       limit: 4
    t.string   "start_year",       limit: 255
    t.string   "end_year",         limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "exhibitions", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "faqs", force: :cascade do |t|
    t.string   "question",   limit: 255
    t.text     "answer",     limit: 65535
    t.integer  "product_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "honors", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "year",       limit: 255
    t.integer  "company_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "managings", force: :cascade do |t|
    t.integer  "profile_id",  limit: 4
    t.integer  "role_id",     limit: 4
    t.integer  "assigner_id", limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "profile_id", limit: 4
    t.integer  "company_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "role_id",    limit: 4
    t.integer  "adder_id",   limit: 4
  end

  create_table "packagings", force: :cascade do |t|
    t.string   "dimensions",      limit: 255
    t.string   "weight",          limit: 255
    t.string   "weight_scale",    limit: 255
    t.integer  "packaging_type",  limit: 4
    t.string   "color",           limit: 255
    t.text     "delivery_detail", limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "product_id",      limit: 4
  end

  create_table "participations", force: :cascade do |t|
    t.integer  "exhibition_id", limit: 4
    t.integer  "company_id",    limit: 4
    t.string   "year",          limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.integer  "category_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.string   "surename",            limit: 255
    t.string   "phonenumber",         limit: 255
    t.string   "email",               limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 8
    t.datetime "avatar_updated_at"
    t.boolean  "phonenumber_status"
    t.boolean  "email_status"
    t.integer  "user_id",             limit: 4
    t.integer  "creator_id",          limit: 4
  end

  create_table "roles", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.integer  "priority",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "uploads", force: :cascade do |t|
    t.string   "token",                   limit: 255
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "picture_file_name",       limit: 255
    t.string   "picture_content_type",    limit: 255
    t.integer  "picture_file_size",       limit: 8
    t.datetime "picture_updated_at"
    t.string   "uploadable_type",         limit: 255
    t.integer  "uploadable_id",           limit: 4
    t.string   "document_file_name",      limit: 255
    t.string   "document_content_type",   limit: 255
    t.integer  "document_file_size",      limit: 8
    t.datetime "document_updated_at"
    t.string   "attachment_type",         limit: 255
    t.string   "attachment_file_name",    limit: 255
    t.string   "attachment_content_type", limit: 255
    t.integer  "attachment_file_size",    limit: 8
    t.datetime "attachment_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end

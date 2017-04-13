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

ActiveRecord::Schema.define(version: 20170405014716) do

  create_table "coursecontents", primary_key: "courseContentID", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "contentName",        limit: 50, null: false
    t.string "contentDescription", limit: 50, null: false
  end

  create_table "courses", primary_key: "course_id", id: :integer, default: 0, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "courseName",      limit: 50, null: false
    t.integer "courseContentID",            null: false
    t.index ["courseContentID"], name: "courseContentID", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "userID"
    t.integer  "userAccess"
    t.string   "userName"
    t.integer  "course_id"
    t.index ["course_id"], name: "course_id", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["userName"], name: "index_users_on_userName", unique: true, using: :btree
  end

  add_foreign_key "courses", "coursecontents", column: "courseContentID", primary_key: "courseContentID", name: "courses_ibfk_1"
  add_foreign_key "users", "courses", primary_key: "course_id", name: "users_ibfk_1"
end

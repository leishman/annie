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

ActiveRecord::Schema.define(version: 20170509180751) do

  create_table "gun_ranges", force: :cascade do |t|
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.index ["name"], name: "index_gun_ranges_on_name", unique: true
  end

  create_table "guns", force: :cascade do |t|
    t.string "name"
    t.integer "gun_type"
    t.index ["name"], name: "index_guns_on_name", unique: true
  end

  create_table "shots", force: :cascade do |t|
    t.integer "target_id"
    t.integer "x_pos"
    t.integer "y_pos"
    t.index ["target_id"], name: "index_shots_on_target_id"
  end

  create_table "targets", force: :cascade do |t|
    t.integer "user_id"
    t.string "image"
    t.integer "gun_id"
    t.integer "gun_range_id"
    t.integer "width"
    t.integer "height"
    t.index ["gun_id"], name: "index_targets_on_gun_id"
    t.index ["gun_range_id"], name: "index_targets_on_gun_range_id"
    t.index ["user_id"], name: "index_targets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

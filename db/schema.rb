# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_06_19_131526) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cafe_ratings", force: :cascade do |t|
    t.integer "cafe_id"
    t.integer "customer_id"
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_cafe_ratings_on_customer_id"
  end

  create_table "cafes", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.string "business_hours", null: false
    t.float "rate", null: false
    t.float "latitude", null: false
    t.float "longitude", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "content", null: false
    t.integer "customer_id"
    t.integer "cafe_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "score"
  end

  create_table "customer_posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "customer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_customer_posts_on_customer_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "introduction"
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "facilities", force: :cascade do |t|
    t.integer "cafe_id", null: false
    t.boolean "wifi", default: false
    t.boolean "power_outlets", default: false
    t.boolean "seating", default: false
    t.boolean "outdoor_seating", default: false
    t.boolean "parking", default: false
    t.boolean "wheelchair_accessible", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "post_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "visitor_id", null: false
    t.integer "visited_id", null: false
    t.integer "post_id", null: false
    t.string "action", null: false
    t.boolean "checked", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id"], name: "index_notifications_on_post_id"
    t.index ["visited_id"], name: "index_notifications_on_visited_id"
    t.index ["visitor_id"], name: "index_notifications_on_visitor_id"
  end

  create_table "posts", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "cafe_id", null: false
    t.text "content", null: false
    t.string "tilte", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "rating"
    t.float "#<ActiveRecord::ConnectionAdapters::SQLite3::TableDefinition:0x00007f9fb3268fb8>"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "cafe"
    t.integer "customer"
    t.text "comment"
    t.float "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cafe_ratings", "cafes"
  add_foreign_key "cafe_ratings", "customers"
  add_foreign_key "comments", "cafes"
  add_foreign_key "comments", "customers"
  add_foreign_key "customer_posts", "customers"
  add_foreign_key "facilities", "cafes"
  add_foreign_key "notifications", "customers", column: "visited_id"
  add_foreign_key "notifications", "customers", column: "visitor_id"
  add_foreign_key "notifications", "posts"
end

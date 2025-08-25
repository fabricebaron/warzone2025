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

ActiveRecord::Schema.define(version: 2025_08_25_032742) do

  create_table "components", force: :cascade do |t|
    t.string "category", null: false
    t.integer "ranking", null: false
    t.string "component_name", null: false
    t.float "avg_fps_1080"
    t.float "avg_fps_1440"
    t.float "avg_fps_4k"
    t.float "avg_fps_1080_1"
    t.float "avg_fps_1440_1"
    t.float "avg_fps_4k_1"
    t.string "asin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category"], name: "index_components_on_category"
    t.index ["component_name"], name: "index_components_on_component_name"
    t.index ["ranking"], name: "index_components_on_ranking"
  end

  create_table "offers", force: :cascade do |t|
    t.integer "component_id", null: false
    t.string "vendor", null: false
    t.string "url", null: false
    t.decimal "price", precision: 10, scale: 2
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["component_id", "vendor"], name: "index_offers_on_component_id_and_vendor", unique: true
    t.index ["component_id"], name: "index_offers_on_component_id"
  end

  add_foreign_key "offers", "components"
end

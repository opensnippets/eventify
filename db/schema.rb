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

ActiveRecord::Schema.define(version: 2020_02_25_170124) do

  create_table "albums", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "venue_id"
    t.string "album_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_id"], name: "index_albums_on_venue_id"
  end

  create_table "event_facilities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_facilities_on_event_id"
    t.index ["facility_id"], name: "index_event_facilities_on_facility_id"
  end

  create_table "event_registrations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "event_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.text "location"
    t.string "contact_numbers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "payment_id"
    t.string "end_date"
    t.integer "payment_amount_based_on_enum"
    t.integer "total_seats"
    t.boolean "is_super_user"
    t.text "description"
    t.string "start_date"
    t.string "event_poster_file_name"
    t.string "event_poster_content_type"
    t.integer "event_poster_file_size"
    t.datetime "event_poster_updated_at"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "facilities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.boolean "ac"
    t.boolean "pool"
    t.boolean "projector"
    t.boolean "sound_system"
    t.boolean "genertor"
    t.boolean "microphone"
    t.boolean "drinks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "venue_id"
    t.index ["venue_id"], name: "index_facilities_on_venue_id"
  end

  create_table "foods", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "venue_id"
    t.integer "food_type", default: 0
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_id"], name: "index_foods_on_venue_id"
  end

  create_table "reviews", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "body"
    t.integer "rating"
    t.string "reviewable_type"
    t.bigint "reviewable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["reviewable_type", "reviewable_id"], name: "index_reviews_on_reviewable_type_and_reviewable_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
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
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_super_user", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "venue_addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "venue_id"
    t.string "contact_number"
    t.text "address"
    t.string "country"
    t.string "state"
    t.string "pincode"
    t.string "gst"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["venue_id"], name: "index_venue_addresses_on_venue_id"
  end

  create_table "venue_images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "venue_profile_file_name"
    t.string "venue_profile_content_type"
    t.integer "venue_profile_file_size"
    t.datetime "venue_profile_updated_at"
    t.index ["album_id"], name: "index_venue_images_on_album_id"
  end

  create_table "venue_registrations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "venue_id"
    t.string "phone_number"
    t.string "name"
    t.date "function_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_venue_registrations_on_user_id"
    t.index ["venue_id"], name: "index_venue_registrations_on_venue_id"
  end

  create_table "venues", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_venues_on_user_id"
  end

  add_foreign_key "albums", "venues"
  add_foreign_key "foods", "venues"
  add_foreign_key "venue_addresses", "venues"
  add_foreign_key "venue_images", "albums"
  add_foreign_key "venue_registrations", "users"
  add_foreign_key "venue_registrations", "venues"
end

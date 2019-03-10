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

ActiveRecord::Schema.define(version: 2019_03_10_110131) do

  create_table "assignments", force: :cascade do |t|
    t.string "description"
    t.boolean "isactive"
    t.integer "user_id"
    t.integer "class_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_detail_id"], name: "index_assignments_on_class_detail_id"
    t.index ["user_id"], name: "index_assignments_on_user_id"
  end

  create_table "attendances", force: :cascade do |t|
    t.boolean "ispresent"
    t.string "date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "class_details", force: :cascade do |t|
    t.string "class_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.string "participates"
    t.string "event_date"
    t.string "event_time"
    t.string "location"
    t.integer "class_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_detail_id"], name: "index_events_on_class_detail_id"
  end

  create_table "exams", force: :cascade do |t|
    t.string "exam_name"
    t.string "date_of_exam"
    t.boolean "isactive"
    t.integer "class_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_detail_id"], name: "index_exams_on_class_detail_id"
  end

  create_table "marks", force: :cascade do |t|
    t.string "mark"
    t.integer "subject_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["subject_id"], name: "index_marks_on_subject_id"
    t.index ["user_id"], name: "index_marks_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "role_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "s_name"
    t.string "description"
    t.integer "class_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_detail_id"], name: "index_subjects_on_class_detail_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "mobile"
    t.integer "role_id"
    t.integer "class_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_detail_id"], name: "index_users_on_class_detail_id"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end

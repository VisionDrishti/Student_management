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

ActiveRecord::Schema[7.0].define(version: 2022_10_17_121459) do
  create_table "articles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "descreption"
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.integer "article_id", null: false
    t.integer "event_id", null: false
    t.integer "news_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
    t.index ["event_id"], name: "index_comments_on_event_id"
    t.index ["news_id"], name: "index_comments_on_news_id"
  end

  create_table "cources", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "descreption"
  end

  create_table "cources_students", id: false, force: :cascade do |t|
    t.integer "cource_id", null: false
    t.integer "student_id", null: false
  end

  create_table "data", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Event_id"
  end

  create_table "news", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "News_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.text "descreption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_projects", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "submissions_date"
    t.index ["project_id"], name: "index_student_projects_on_project_id"
    t.index ["student_id"], name: "index_student_projects_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_data", force: :cascade do |t|
    t.string "title"
    t.integer "data_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["data_id"], name: "index_sub_data_on_data_id"
  end

  add_foreign_key "comments", "articles"
  add_foreign_key "comments", "events"
  add_foreign_key "comments", "news"
  add_foreign_key "student_projects", "projects"
  add_foreign_key "student_projects", "students"
  add_foreign_key "sub_data", "data", column: "data_id"
end

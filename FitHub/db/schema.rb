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

ActiveRecord::Schema.define(version: 20151021151538) do

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.string   "muscle_group"
    t.string   "specific_muscles_worked"
    t.text     "guide"
    t.integer  "workout_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "gyms", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.integer  "c_bodyweight"
    t.integer  "c_bench"
    t.integer  "c_squat"
    t.integer  "c_deadlift"
    t.integer  "t_bodyweight"
    t.integer  "t_bench"
    t.integer  "t_squat"
    t.integer  "t_deadlift"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.text     "description"
    t.text     "challenges"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end

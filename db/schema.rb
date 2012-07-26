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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120726161949) do

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "program"
    t.integer  "teacher"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "names", :force => true do |t|
    t.string   "course"
    t.string   "term"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.string   "faculty"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "qualifications", :force => true do |t|
    t.integer  "student"
    t.integer  "exam"
    t.integer  "qualif"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "studens", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "cellphone"
    t.string   "age"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "addres"
    t.integer  "age"
    t.string   "cellphone"
    t.string   "name"
    t.string   "progam"
    t.string   "identification"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "teachers", :force => true do |t|
    t.string   "name"
    t.string   "profession"
    t.string   "address"
    t.string   "cellphone"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

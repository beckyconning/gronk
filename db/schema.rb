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

ActiveRecord::Schema.define(:version => 20111206161316) do

  create_table "action_definitions", :force => true do |t|
    t.string   "name"
    t.boolean  "ends_phase"
    t.boolean  "gives_random_item"
    t.integer  "parent_action_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "action_graphics", :force => true do |t|
    t.integer  "action_definition_id"
    t.integer  "creature_definition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "creature_definitions", :force => true do |t|
    t.string   "name"
    t.integer  "sleepy_phase_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "creatures", :force => true do |t|
    t.integer  "person_id"
    t.string   "name"
    t.integer  "creature_definition_id"
    t.integer  "dream_points"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dream_definitions", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dreams", :force => true do |t|
    t.integer  "dream_definition_id"
    t.integer  "creature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "effects", :force => true do |t|
    t.integer  "feeling_definition_id"
    t.integer  "ammount"
    t.integer  "effectable_id"
    t.string   "effectable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feeling_definitions", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "priority"
    t.boolean  "hidden"
    t.boolean  "expressed_daily"
    t.integer  "starting_value"
    t.integer  "daily_increase"
    t.integer  "only_in_phase_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feeling_graphics", :force => true do |t|
    t.integer  "creature_definition_id"
    t.integer  "feeling_definition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feelings", :force => true do |t|
    t.integer  "feeling_definition_id"
    t.integer  "ammount"
    t.integer  "creature_id"
    t.datetime "last_changed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "graphics", :force => true do |t|
    t.integer  "frame_width"
    t.integer  "graphicable_id"
    t.string   "graphicable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "item_definitions", :force => true do |t|
    t.string   "name"
    t.integer  "action_definition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "item_definition_id"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "people", ["email"], :name => "index_people_on_email", :unique => true
  add_index "people", ["reset_password_token"], :name => "index_people_on_reset_password_token", :unique => true

  create_table "phase_definitions", :force => true do |t|
    t.string   "name"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

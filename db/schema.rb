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

ActiveRecord::Schema.define(:version => 20130327180716) do

  create_table "authentications", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "provider",   :null => false
    t.string   "uid",        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "badges", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "challenges", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "credit"
    t.string   "badge_name"
    t.integer  "badge_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "goal"
    t.text     "needs"
    t.text     "detail"
    t.text     "description"
    t.string   "subject"
    t.string   "teacher"
    t.string   "district"
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "comments", :force => true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.integer  "course_id"
    t.text     "body"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "notes"
    t.string   "plan_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subject_id"
    t.string   "curriculum_url"
    t.string   "course_image"
    t.boolean  "hqt",            :default => false
  end

  create_table "echos", :force => true do |t|
    t.integer  "wish_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "flex_credits", :force => true do |t|
    t.string   "title"
    t.string   "subject"
    t.integer  "creator_id"
    t.text     "achievement"
    t.integer  "init_credits"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "user_id"
  end

  create_table "portfolios", :force => true do |t|
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.text     "notes"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.integer  "student_id"
    t.integer  "teacher_id"
    t.text     "summary"
    t.text     "status"
    t.integer  "portfolio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "projekt"
    t.integer  "user_id"
  end

  create_table "proposal_statuses", :force => true do |t|
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proposal_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proposals", :force => true do |t|
    t.integer  "student_id"
    t.integer  "portfolio_id"
    t.integer  "proposal_type_id"
    t.string   "title"
    t.text     "goals"
    t.text     "description"
    t.text     "questions"
    t.text     "resources"
    t.text     "assessment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", :force => true do |t|
    t.integer  "user_id"
    t.text     "goals"
    t.integer  "portfolio_id"
    t.text     "help_needed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "topic"
    t.integer  "up_votes",     :default => 0, :null => false
    t.integer  "down_votes",   :default => 0, :null => false
  end

  create_table "resources", :force => true do |t|
    t.integer  "user_id"
    t.string   "category"
    t.string   "url"
    t.text     "description"
    t.integer  "viewed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "district"
    t.string   "county"
  end

  create_table "responses", :force => true do |t|
    t.integer  "request_id"
    t.string   "title"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "Response"
    t.integer  "course_id"
  end

  add_index "responses", ["request_id"], :name => "index_responses_on_request_id"
  add_index "responses", ["user_id"], :name => "index_responses_on_user_id"

  create_table "students", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.integer  "teacher_id"
    t.integer  "year"
    t.text     "about"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "course_id"
  end

  create_table "teachers", :force => true do |t|
    t.integer  "user_id"
    t.string   "district"
    t.string   "school"
    t.string   "subject"
    t.string   "specialty"
    t.text     "bio"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
  end

  create_table "users", :force => true do |t|
    t.string   "username",                                           :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
    t.datetime "last_login_at"
    t.datetime "last_logout_at"
    t.datetime "last_activity_at"
    t.string   "role"
    t.string   "avatar"
    t.integer  "up_votes",                        :default => 0,     :null => false
    t.integer  "down_votes",                      :default => 0,     :null => false
    t.boolean  "tos",                             :default => false
  end

  add_index "users", ["activation_token"], :name => "index_users_on_activation_token"
  add_index "users", ["last_logout_at", "last_activity_at"], :name => "index_users_on_last_logout_at_and_last_activity_at"
  add_index "users", ["remember_me_token"], :name => "index_users_on_remember_me_token"
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token"

  create_table "votings", :force => true do |t|
    t.string   "voteable_type"
    t.integer  "voteable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "up_vote",       :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "votings", ["voteable_type", "voteable_id", "voter_type", "voter_id"], :name => "unique_voters", :unique => true
  add_index "votings", ["voteable_type", "voteable_id"], :name => "index_votings_on_voteable_type_and_voteable_id"
  add_index "votings", ["voter_type", "voter_id"], :name => "index_votings_on_voter_type_and_voter_id"

  create_table "wishes", :force => true do |t|
    t.string   "wish"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "challenge_id"
  end

end

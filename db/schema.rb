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

ActiveRecord::Schema.define(version: 20170908120742) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "concepts", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "examples",    default: [],              array: true
    t.integer  "skill_id"
    t.integer  "order"
    t.string   "name"
    t.index ["skill_id"], name: "index_concepts_on_skill_id", using: :btree
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "messages_id",  default: [],              array: true
    t.index ["messages_id"], name: "index_conversations_on_messages_id", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.boolean  "read",            default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
    t.index ["user_id"], name: "index_messages_on_user_id", using: :btree
  end

  create_table "notes", force: :cascade do |t|
    t.string   "title"
    t.string   "uclaclass"
    t.integer  "reputation"
    t.string   "ufile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "author"
    t.string   "notetype"
    t.string   "professor"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "answers",       default: [],              array: true
    t.string   "question_type"
    t.string   "final_answer"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.text     "content"
    t.integer  "concept_id"
    t.index ["concept_id"], name: "index_questions_on_concept_id", using: :btree
  end

  create_table "skills", force: :cascade do |t|
    t.integer  "difficulty"
    t.integer  "order"
    t.string   "topic"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "author"
    t.string   "ucla_class"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",                           null: false
    t.string   "encrypted_password",     default: "",                           null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                            null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
    t.string   "usertype",               default: "s"
    t.string   "username"
    t.string   "uploadednoteurls",       default: [],                                        array: true
    t.integer  "upvotednotes",           default: [],                                        array: true
    t.string   "description"
    t.integer  "progress",               default: [],                                        array: true
    t.boolean  "mentor"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "image",                  default: "/public/profileimage/1.png"
    t.decimal  "ratingscore"
    t.boolean  "online",                 default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end

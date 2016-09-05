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

ActiveRecord::Schema.define(version: 20160901071751) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "banners", force: :cascade do |t|
    t.integer  "parent_id",               default: 0
    t.string   "caption",     limit: 20,  default: "#"
    t.string   "description", limit: 100, default: "#"
    t.string   "link",        limit: 50,  default: "#"
    t.string   "picture",     limit: 50
    t.integer  "seq",                     default: 0
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "carts", force: :cascade do |t|
    t.integer "user_id"
    t.string  "itemcode"
    t.integer "qty"
    t.decimal "sale_price", precision: 8, scale: 2, default: 0.0
  end

  add_index "carts", ["user_id"], name: "index_carts_on_user_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "caption",     limit: 30
    t.string   "description", limit: 50
    t.integer  "parent_id",                            default: 0
    t.integer  "seq",                                  default: 0
    t.datetime "created_at",             precision: 6,             null: false
    t.datetime "updated_at",             precision: 6,             null: false
  end

  create_table "categories_products", id: false, force: :cascade do |t|
    t.integer "category_id"
    t.integer "product_id"
  end

  add_index "categories_products", ["category_id"], name: "index_categories_products_on_category_id", using: :btree
  add_index "categories_products", ["product_id"], name: "index_categories_products_on_product_id", using: :btree

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups_menus", id: false, force: :cascade do |t|
    t.integer "group_id"
    t.integer "menu_id"
  end

  add_index "groups_menus", ["group_id"], name: "index_groups_menus_on_group_id", using: :btree
  add_index "groups_menus", ["menu_id"], name: "index_groups_menus_on_menu_id", using: :btree

  create_table "groups_supervisors", id: false, force: :cascade do |t|
    t.integer "group_id"
    t.integer "supervisor_id"
  end

  add_index "groups_supervisors", ["group_id"], name: "index_groups_supervisors_on_group_id", using: :btree
  add_index "groups_supervisors", ["supervisor_id"], name: "index_groups_supervisors_on_supervisor_id", using: :btree

  create_table "home_grids", force: :cascade do |t|
    t.integer  "parent_id",               default: 0
    t.integer  "template_id",             default: 0
    t.string   "caption",     limit: 50,  default: "#"
    t.integer  "row"
    t.integer  "col"
    t.integer  "size_x"
    t.integer  "size_y"
    t.string   "link",        limit: 100, default: "#"
    t.string   "picture",     limit: 50
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "seq",                     default: 0,   null: false
  end

  create_table "jcoinds", force: :cascade do |t|
    t.integer  "jcoinm_id"
    t.string   "custom_no",    limit: 10
    t.string   "data_date",    limit: 10
    t.string   "sale_no",      limit: 20
    t.string   "data_type_no", limit: 2
    t.decimal  "opt_amt",                 precision: 8, scale: 2, default: 0.0
    t.decimal  "redeem_amt",              precision: 8, scale: 2, default: 0.0
    t.decimal  "reward_amt",              precision: 8,           default: 0
    t.decimal  "balance",                 precision: 8
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
  end

  add_index "jcoinds", ["jcoinm_id"], name: "index_jcoinds_on_jcoinm_id", using: :btree

  create_table "jcoinms", force: :cascade do |t|
    t.string   "jcard_id",   limit: 8
    t.decimal  "jcoin_amt",            precision: 8, scale: 2, default: 0.0
    t.integer  "user_id"
    t.string   "rfcard_id",  limit: 8
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
  end

  add_index "jcoinms", ["user_id"], name: "index_jcoinms_on_user_id", using: :btree

  create_table "logs", force: :cascade do |t|
    t.string   "log"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer  "parent_id",             default: 0
    t.string   "caption",    limit: 30
    t.string   "action",     limit: 50
    t.string   "icon",       limit: 20, default: "fa-th"
    t.integer  "seq",                   default: 0
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "body"
    t.integer  "conversation_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "messages", ["conversation_id"], name: "index_messages_on_conversation_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "order_details", force: :cascade do |t|
    t.integer "order_id"
    t.string  "itemcode"
    t.integer "qty"
    t.decimal "sale_price", precision: 8, scale: 2, default: 0.0
  end

  add_index "order_details", ["order_id"], name: "index_order_details_on_order_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "order_no"
    t.string   "type"
    t.datetime "close_date"
    t.string   "shipping_no"
    t.string   "shipping_type"
    t.string   "pay_type"
    t.string   "recipient"
    t.string   "phone"
    t.string   "zip_code"
    t.string   "address"
    t.string   "store_no"
    t.string   "store_address"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "status"
  end

  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "pictures", force: :cascade do |t|
    t.string   "asset",          limit: 50
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.integer  "seq",                       default: 0
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "pictures", ["imageable_type", "imageable_id"], name: "index_pictures_on_imageable_type_and_imageable_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "caption",     limit: 50
    t.string   "sub_caption", limit: 50
    t.string   "itemcode",    limit: 30
    t.text     "brief"
    t.text     "size_info"
    t.text     "spec"
    t.decimal  "unit_price",             precision: 8, scale: 2, default: 9999.0
    t.decimal  "sale_price",             precision: 8, scale: 2, default: 9999.0
    t.decimal  "cost",                   precision: 8, scale: 2, default: 0.0
    t.time     "deleted_at"
    t.datetime "created_at",                                                                     null: false
    t.datetime "updated_at",                                                                     null: false
    t.datetime "started_at",                                     default: '2016-08-12 00:03:43'
    t.datetime "stoped_at"
  end

  create_table "store_infos", force: :cascade do |t|
    t.string   "caption"
    t.string   "address"
    t.string   "phone",      limit: 20
    t.decimal  "latitude",              precision: 10, scale: 6
    t.decimal  "longitude",             precision: 10, scale: 6
    t.string   "content"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "store_infos", ["latitude"], name: "index_store_infos_on_latitude", using: :btree
  add_index "store_infos", ["longitude"], name: "index_store_infos_on_longitude", using: :btree

  create_table "sub_product_colors", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "color",      limit: 20
    t.string   "color_pic",  limit: 20
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "seq",                   default: 0
    t.time     "deleted_at"
  end

  add_index "sub_product_colors", ["product_id"], name: "index_sub_product_colors_on_product_id", using: :btree

  create_table "sub_products", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "sub_product_color_id"
    t.string   "color",                limit: 10
    t.string   "size",                 limit: 4
    t.string   "itemcode",             limit: 30
    t.integer  "qty",                             default: 0
    t.integer  "seq",                             default: 0
    t.time     "deleted_at"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at"
  end

  add_index "sub_products", ["product_id"], name: "index_sub_products_on_product_id", using: :btree
  add_index "sub_products", ["sub_product_color_id"], name: "index_sub_products_on_sub_product_color_id", using: :btree

  create_table "supervisors", force: :cascade do |t|
    t.string   "nickname",               default: "", null: false
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
  end

  add_index "supervisors", ["email"], name: "index_supervisors_on_email", unique: true, using: :btree
  add_index "supervisors", ["reset_password_token"], name: "index_supervisors_on_reset_password_token", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "nickname",                                       default: "",  null: false
    t.string   "email",                                          default: "",  null: false
    t.string   "encrypted_password",                             default: "",  null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                                  default: 0,   null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "provider"
    t.string   "uid"
    t.integer  "buy_count",                                      default: 0
    t.decimal  "buy_amount",             precision: 8, scale: 2, default: 0.0
    t.string   "recipient"
    t.string   "phone"
    t.string   "zip_code"
    t.string   "address"
    t.string   "store_no"
    t.string   "store_address"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
end

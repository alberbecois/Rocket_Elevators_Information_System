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

ActiveRecord::Schema.define(version: 2020_03_04_225007) do

  create_table "Address", primary_key: "address_ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "address_type", null: false
    t.integer "building_id", null: false
    t.integer "customer_id", null: false
    t.string "address", null: false
    t.string "appt_no", null: false
    t.string "city", null: false
    t.string "post_code", null: false
    t.string "country", null: false
    t.text "notes", null: false
    t.index ["building_id"], name: "Address_fk0"
    t.index ["customer_id"], name: "Address_fk1"
  end

  create_table "Batteries", primary_key: "batteries_ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "building_ID", null: false
    t.string "batterie_type", null: false
    t.string "status", null: false
    t.integer "employee_ID", null: false
    t.date "commissioning", null: false
    t.date "last_inspection", null: false
    t.string "operation_certificate", null: false
    t.text "information", null: false
    t.text "notes", null: false
    t.index ["building_ID"], name: "Batteries_fk0"
    t.index ["employee_ID"], name: "Batteries_fk1"
  end

  create_table "Building_Details", primary_key: "building_detail_ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "building_Id", null: false
    t.string "information_key", null: false
    t.string "value", null: false
    t.index ["building_Id"], name: "Building_Details_fk0"
  end

  create_table "Buildings", primary_key: "building_ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "address_id", null: false
    t.string "admin_full_name", null: false
    t.string "admin_email", null: false
    t.string "admin_phone", null: false
    t.string "tech_full_name", null: false
    t.string "tech_email", null: false
    t.string "tech_phone", null: false
    t.index ["address_id"], name: "Buildings_fk1"
    t.index ["customer_id"], name: "Buildings_fk0"
  end

  create_table "Columns", primary_key: "columns_ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "battery_ID", null: false
    t.string "column_type", null: false
    t.integer "floors", null: false
    t.string "status", null: false
    t.text "information", null: false
    t.text "notes", null: false
    t.index ["battery_ID"], name: "Columns_fk0"
  end

  create_table "Customers", primary_key: "customer_ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "business", null: false
    t.string "headquarter_address", null: false
    t.string "contact_full_name", null: false
    t.string "contact_phone", null: false
    t.string "contact_email", null: false
    t.string "business_description", null: false
    t.string "tech_full_name", null: false
    t.string "tech_phone", null: false
    t.string "tech_email", null: false
    t.index ["user_id"], name: "Customers_fk0"
  end

  create_table "Elevators", primary_key: "elevators_ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "column_ID", null: false
    t.integer "serial_number", null: false
    t.string "model", null: false
    t.string "elevatory_type", null: false
    t.string "status", null: false
    t.date "start_date", null: false
    t.date "last_check", null: false
    t.string "certificate", null: false
    t.text "information", null: false
    t.text "notes", null: false
    t.index ["column_ID"], name: "Elevators_fk0"
  end

  create_table "Employees", primary_key: "employee_ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "title", null: false
    t.string "email", null: false
    t.string "phone", null: false
  end

  create_table "Leads", primary_key: "leads_ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "full_name", null: false
    t.string "business", null: false
    t.string "email", null: false
    t.string "phone", null: false
    t.string "project_name", null: false
    t.string "description", null: false
    t.string "department", null: false
    t.text "message", null: false
    t.binary "file", limit: 1, null: false
  end

  create_table "Quotes", primary_key: "quotes_ID", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "business", null: false
    t.string "fullname", null: false
    t.string "email", null: false
    t.string "build_type", null: false
    t.integer "product_line", null: false
    t.integer "nb_cages", null: false
    t.integer "nb_appartment", null: false
    t.integer "nb_floors", null: false
    t.integer "nb_base", null: false
    t.integer "nb_occupants", null: false
    t.integer "elevator_units", null: false
    t.integer "installation_fe", null: false
    t.integer "p_line_selection", null: false
    t.integer "sum_total", null: false
  end

  create_table "Users", primary_key: "user_ID", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "phone", null: false
    t.string "business", null: false
  end

  create_table "admin_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  add_foreign_key "Address", "Buildings", column: "building_id", primary_key: "building_ID", name: "Address_fk0"
  add_foreign_key "Address", "Customers", column: "customer_id", primary_key: "customer_ID", name: "Address_fk1"
  add_foreign_key "Batteries", "Buildings", column: "building_ID", primary_key: "building_ID", name: "Batteries_fk0"
  add_foreign_key "Batteries", "Employees", column: "employee_ID", primary_key: "employee_ID", name: "Batteries_fk1"
  add_foreign_key "Building_Details", "Buildings", column: "building_Id", primary_key: "building_ID", name: "Building_Details_fk0"
  add_foreign_key "Buildings", "Address", column: "address_id", primary_key: "address_ID", name: "Buildings_fk1"
  add_foreign_key "Buildings", "Customers", column: "customer_id", primary_key: "customer_ID", name: "Buildings_fk0"
  add_foreign_key "Columns", "Batteries", column: "battery_ID", primary_key: "batteries_ID", name: "Columns_fk0"
  add_foreign_key "Customers", "Users", column: "user_id", primary_key: "user_ID", name: "Customers_fk0"
  add_foreign_key "Elevators", "Columns", column: "column_ID", primary_key: "columns_ID", name: "Elevators_fk0"
end

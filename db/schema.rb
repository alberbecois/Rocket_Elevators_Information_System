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

ActiveRecord::Schema.define(version: 2020_03_10_172401) do

  create_table "BuildingDetails", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "BuildingID"
    t.string "BuildingType"
    t.date "ConstructionYear"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "PersonId"
    t.string "AdressType"
    t.string "PersonStatus"
    t.string "Entity"
    t.string "Street"
    t.string "City"
    t.string "PostalCode"
    t.text "Notes"
    t.date "DateRequested"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "batteries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "BatteryID"
    t.string "BuildingType"
    t.string "BatteryStatus"
    t.integer "ElevatorID"
    t.date "CommisionDate"
    t.date "LastInspection"
    t.boolean "HasCertificate"
    t.text "Info"
    t.text "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "BuildingID"
    t.string "Adress"
    t.string "LandLordfullname"
    t.string "LandLordemail"
    t.string "TCfullname"
    t.string "TCemail"
    t.string "TCphone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "columns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "BuildingID"
    t.string "BuildingType"
    t.integer "FloorServed"
    t.string "ColumnStatus"
    t.text "Info"
    t.text "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "controllers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "test"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_controllers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_controllers_on_reset_password_token", unique: true
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "PersonID"
    t.date "DateCreated"
    t.string "Company"
    t.string "CompanyHQAdress"
    t.string "CompanyContactFullName"
    t.string "CompanyContactPhone"
    t.string "CompanyContactEmail"
    t.text "CompanyDescription"
    t.string "STOfullname"
    t.string "TOphone"
    t.string "TMemail"
  end

  create_table "elevators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "ElevatorID"
    t.string "ElevatorSerialNumber"
    t.string "Model"
    t.string "ElevatorBuildingType"
    t.string "ElevatorStatus"
    t.date "DateCommissioned"
    t.boolean "HasCertificate"
    t.text "Info"
    t.text "Notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "PersonID"
    t.string "FullName"
    t.string "CompanyName"
    t.string "Email"
    t.string "Phone"
    t.string "ProjectName"
    t.text "ProjectDescription"
    t.string "Departement"
    t.text "Comment"
    t.date "DateRequested"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "project_type"
    t.string "num_elevators"
    t.string "product"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_quotes_on_customer_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "quotes", "customers"
end

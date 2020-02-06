# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_06_100927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "valor_usd"
    t.decimal "valor_cop"
    t.decimal "impuesto"
    t.decimal "seguro"
    t.decimal "flete"
    t.decimal "aduana"
    t.decimal "total_envio_usd"
    t.decimal "total_envio_cop"
    t.string "accion"
    t.boolean "bought"
    t.decimal "valor_maximo_cop"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "peso"
    t.decimal "total_cost"
    t.float "exchange_rate"
  end

end

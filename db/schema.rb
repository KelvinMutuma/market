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

ActiveRecord::Schema.define(version: 20140623120059) do

  create_table "announcements", force: true do |t|
    t.string   "MSG_NAME"
    t.string   "MESSAGE"
    t.string   "SUBJECT"
    t.datetime "SendingTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "boards", force: true do |t|
    t.string   "BOARD_ID"
    t.string   "CURRENT_SESSION_ID"
    t.datetime "SendingTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "indices", force: true do |t|
    t.string   "INDEX_ID"
    t.float    "INDEX_VALUE"
    t.float    "INDEX_HIGH_VALUE"
    t.float    "INDEX_LOW_VALUE"
    t.string   "MARKET_TYPE"
    t.datetime "SendingTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "instruments", force: true do |t|
    t.string   "SecurityID"
    t.date     "IssueDate"
    t.string   "ISIN"
    t.integer  "QUANTITY_ISSUED"
    t.float    "PAR_VALUE"
    t.float    "ISSUED_PRICE"
    t.float    "LAST_TRADED_PRICE"
    t.float    "WTD_HI_PRICE"
    t.float    "MTD_HI_PRICE"
    t.float    "YTD_HI_PRICE"
    t.float    "P12_HI_PRICE"
    t.float    "ALL_HI_PRICE"
    t.float    "ALL_LO_PRICE"
    t.float    "WTD_LO_PRICE"
    t.float    "MTD_LO_PRICE"
    t.float    "YTD_LO_PRICE"
    t.float    "P12_LO_PRICE"
    t.integer  "TDY_SHARE_VOL"
    t.integer  "WTD_SHARE_VOL"
    t.integer  "MTD_SHARE_VOL"
    t.integer  "YTD_SHARE_VOL"
    t.integer  "P12_SHARE_VOL"
    t.integer  "TDY_TRADE_VOL"
    t.integer  "WTD_TRADE_VOL"
    t.integer  "MTD_TRADE_VOL"
    t.integer  "YTD_TRADE_VOL"
    t.integer  "P12_TRADE_VOL"
    t.float    "TDY_TURNOVER"
    t.float    "WTD_TURNOVER"
    t.float    "MTD_TURNOVER"
    t.float    "YTD_TURNOVER"
    t.float    "P12_TURNOVER"
    t.float    "PREVIOUS_CLOSE"
    t.float    "FOREIGN_HOLDINGS"
    t.integer  "XC"
    t.integer  "XD"
    t.integer  "XR"
    t.float    "FOREIGN_PERCENTAGE"
    t.date     "DATE"
    t.integer  "HI_TRADE"
    t.integer  "LO_TRADE"
    t.float    "CLOSING_PRICE"
    t.datetime "SendingTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "issuers", force: true do |t|
    t.string   "ISSUER_ID"
    t.datetime "SendingTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "market_statuses", force: true do |t|
    t.string   "STATUS"
    t.datetime "SendingTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "market_summaries", force: true do |t|
    t.integer  "TRADE_VOLUME"
    t.integer  "SHARE_VOLUME"
    t.string   "MARKET_TYPE"
    t.datetime "SendingTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_books", force: true do |t|
    t.string   "SecurityID"
    t.string   "BOARD_ID"
    t.integer  "TOTAL_BIDS"
    t.integer  "TOTAL_ASKS"
    t.float    "BID1_PRICE"
    t.float    "BID2_PRICE"
    t.float    "BID3_PRICE"
    t.float    "BID4_PRICE"
    t.float    "BID5_PRICE"
    t.integer  "BID1_QTY"
    t.integer  "BID2_QTY"
    t.integer  "BID3_QTY"
    t.integer  "BID4_QTY"
    t.integer  "BID5_QTY"
    t.integer  "BID1_SPLITS"
    t.integer  "BID2_SPLITS"
    t.integer  "BID3_SPLITS"
    t.integer  "BID4_SPLITS"
    t.integer  "BID5_SPLITS"
    t.float    "ASK1_PRICE"
    t.float    "ASK2_PRICE"
    t.float    "ASK3_PRICE"
    t.float    "ASK4_PRICE"
    t.float    "ASK5_PRICE"
    t.integer  "ASK1_QTY"
    t.integer  "ASK2_QTY"
    t.integer  "ASK3_QTY"
    t.integer  "ASK4_QTY"
    t.integer  "ASK5_QTY"
    t.integer  "ASK1_SPLITS"
    t.integer  "ASK2_SPLITS"
    t.integer  "ASK3_SPLITS"
    t.integer  "ASK4_SPLITS"
    t.integer  "ASK5_SPLITS"
    t.float    "Price"
    t.integer  "Quantity"
    t.integer  "MBO_Action"
    t.string   "Buy_Sell"
    t.float    "Priority_Sequence"
    t.datetime "SendingTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sectors", force: true do |t|
    t.string   "SECTOR_ID"
    t.integer  "SECT_TURNOVER_TDY"
    t.integer  "SECT_VOLUME_TDY"
    t.integer  "SECT_TRADES_TDY"
    t.datetime "SendingTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trades", force: true do |t|
    t.string   "scaffold"
    t.string   "SecurityID"
    t.string   "BOARD_ID"
    t.float    "Price"
    t.float    "Quantity"
    t.time     "TransactTime"
    t.integer  "HI_TRADE"
    t.integer  "LO_TRADE"
    t.date     "DATE"
    t.datetime "SendingTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

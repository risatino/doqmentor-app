class DropActiveContractsTable < ActiveRecord::Migration[5.0]
  def change
       drop_table :active_contracts do |t|
         t.integer  "user_id"
         t.integer  "gig_id"
         t.integer  "legal_contract_id"
         t.integer  "music_contract_id"
         t.integer  "design_contract_id"
         t.integer  "quantity"
         t.integer  "total_billable_hours"
         t.integer  "priority"
         t.datetime "created_at",                          null: false
         t.datetime "updated_at",                          null: false
         t.boolean  "active",               default: true
       end
  end
end

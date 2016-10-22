class CreateActiveContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :active_contracts do |t|
      t.integer :user_id
      t.integer :gig_id
      t.integer :legal_contract_id
      t.integer :music_contract_id
      t.integer :design_contract_id
      t.integer :quantity
      t.integer :total_billable_hours
      t.integer :priority
      t.string :status

      t.timestamps
    end
  end
end

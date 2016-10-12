class CreateLegalContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :legal_contracts do |t|
      t.string :videographer
      t.string :hiring_attorney
      t.string :firm
      t.string :recording_venue
      t.string :due_date
      t.string :instructions
      t.string :witness
      t.string :ticket_id
      t.string :media_format
      t.integer :billable_hours
      t.boolean :signature

      t.timestamps
    end
  end
end

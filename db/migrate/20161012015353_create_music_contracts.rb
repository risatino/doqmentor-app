class CreateMusicContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :music_contracts do |t|
      t.string :musician
      t.string :client
      t.string :gig_id
      t.string :title
      t.string :event_venue
      t.string :notes
      t.string :due_date
      t.integer :billable_hours
      t.boolean :signature

      t.timestamps
    end
  end
end

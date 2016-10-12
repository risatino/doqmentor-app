class RemoveBillableHoursFromMusicContracts < ActiveRecord::Migration[5.0]
  def change
    remove_column :music_contracts, :billable_hours, :integer
    remove_column :music_contracts, :signature, :boolean
    add_column :music_contracts, :billable_hours, :integer, :default => 0
    add_column :music_contracts, :signature, :boolean, :default => false
  end
end

class AddActiveToMusicContracts < ActiveRecord::Migration[5.0]
  def change
    add_column :music_contracts, :active, :boolean, :default => true
  end
end

class RenameGigIdFromMusicContracts < ActiveRecord::Migration[5.0]
  def change
    rename_column :music_contracts, :gig_id, :gig_name
  end
end

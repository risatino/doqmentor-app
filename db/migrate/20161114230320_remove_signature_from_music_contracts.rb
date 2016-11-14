class RemoveSignatureFromMusicContracts < ActiveRecord::Migration[5.0]
  def change
    remove_column :music_contracts, :signature, :boolean, :default => false
  end
end

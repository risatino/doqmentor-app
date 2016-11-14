class AddAttachmentSignatureToMusicContracts < ActiveRecord::Migration
  def self.up
    change_table :music_contracts do |t|
      t.attachment :signature
    end
  end

  def self.down
    remove_attachment :music_contracts, :signature
  end
end

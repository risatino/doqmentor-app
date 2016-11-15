class AddAttachmentSignatureToLegalContracts < ActiveRecord::Migration
  def self.up
    change_table :legal_contracts do |t|
      t.attachment :signature
    end
  end

  def self.down
    remove_attachment :legal_contracts, :signature
  end
end

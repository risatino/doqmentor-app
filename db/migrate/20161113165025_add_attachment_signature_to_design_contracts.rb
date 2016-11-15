class AddAttachmentSignatureToDesignContracts < ActiveRecord::Migration
  def self.up
    change_table :design_contracts do |t|
      t.attachment :signature
    end
  end

  def self.down
    remove_attachment :design_contracts, :signature
  end
end

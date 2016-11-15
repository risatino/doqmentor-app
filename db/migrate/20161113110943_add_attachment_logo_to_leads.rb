class AddAttachmentLogoToLeads < ActiveRecord::Migration
  def self.up
    change_table :leads do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :leads, :logo
  end
end

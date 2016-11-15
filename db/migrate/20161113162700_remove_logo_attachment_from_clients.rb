class RemoveLogoAttachmentFromClients < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :clients, :logo
  end
end

class RemoveAvatarFromClients < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :clients, :avatar
  end
end

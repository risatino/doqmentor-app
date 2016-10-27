class RemoveActiveGigsFromClients < ActiveRecord::Migration[5.0]
  def change
    remove_column :clients, :active_gigs, :status, :integer
    add_column :clients, :active, :boolean, :default => true
  end
end

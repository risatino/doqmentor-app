class RemoveActiveGigFromClients < ActiveRecord::Migration[5.0]
  def change
    remove_column :clients, :active_gigs, :integer
    add_column :clients, :active_gigs, :integer, :default => 0
  end
end

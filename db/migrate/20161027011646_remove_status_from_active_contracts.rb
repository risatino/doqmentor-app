class RemoveStatusFromActiveContracts < ActiveRecord::Migration[5.0]
  def change
    remove_column :active_contracts, :status, :string
    add_column :active_contracts, :active, :boolean, :default => true
  end
end

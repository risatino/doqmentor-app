class RenameActiveFromActiveContracts < ActiveRecord::Migration[5.0]
  def change
    change_column :active_contracts, :active, :boolean, :default => false, :default => true
  end
end

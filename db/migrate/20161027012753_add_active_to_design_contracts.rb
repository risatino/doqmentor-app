class AddActiveToDesignContracts < ActiveRecord::Migration[5.0]
  def change
    add_column :design_contracts, :active, :boolean, :default => true
  end
end

class AddActiveToLegalContracts < ActiveRecord::Migration[5.0]
  def change
    add_column :legal_contracts, :active, :boolean, :default => true
  end
end

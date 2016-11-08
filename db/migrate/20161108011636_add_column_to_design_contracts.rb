class AddColumnToDesignContracts < ActiveRecord::Migration[5.0]
  def change
    add_column :design_contracts, :freelance_signature, :text
  end
end

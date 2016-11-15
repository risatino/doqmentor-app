class RemoveColumnFromDesignContracts < ActiveRecord::Migration[5.0]
  def change
    remove_column :design_contracts, :client_signature, :text
    remove_column :design_contracts, :freelance_signature, :text
  end
end

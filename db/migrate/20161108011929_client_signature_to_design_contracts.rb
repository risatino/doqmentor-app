class ClientSignatureToDesignContracts < ActiveRecord::Migration[5.0]
  def change
    add_column :design_contracts, :client_signature, :text
  end
end

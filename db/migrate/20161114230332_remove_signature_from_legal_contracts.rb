class RemoveSignatureFromLegalContracts < ActiveRecord::Migration[5.0]
  def change
    remove_column :legal_contracts, :signature, :boolean, :default => false
  end
end

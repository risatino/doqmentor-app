class RemoveColumnfromDesignContracts < ActiveRecord::Migration[5.0]
  def change
    remove_column :design_contracts, :signature, :boolean, :default => false 
  end
end

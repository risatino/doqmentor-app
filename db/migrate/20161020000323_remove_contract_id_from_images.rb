class RemoveContractIdFromImages < ActiveRecord::Migration[5.0]
  def change
    remove_column :images, :contract_id, :integer
    add_column :images, :user_id, :integer
    add_column :images, :client_id, :integer
    add_column :images, :legal_contract_id, :integer
    add_column :images, :design_contract_id, :integer
    add_column :images, :music_contract_id, :integer
  end
end

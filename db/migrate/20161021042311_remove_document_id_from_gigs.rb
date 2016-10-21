class RemoveDocumentIdFromGigs < ActiveRecord::Migration[5.0]
  def change
    remove_column :gigs, :document_id, :integer
    add_column :gigs, :legal_contract_id, :integer
    add_column :gigs, :music_contract_id, :integer
    add_column :gigs, :design_contract_id, :integer
  end
end

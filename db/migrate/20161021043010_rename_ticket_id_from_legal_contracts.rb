class RenameTicketIdFromLegalContracts < ActiveRecord::Migration[5.0]
  def change
    rename_column :legal_contracts, :ticket_id, :ticket_name
  end
end

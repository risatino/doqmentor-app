class RenameGigIdFromDesignContracts < ActiveRecord::Migration[5.0]
  def change
    rename_column :design_contracts, :gig_id, :gig_name
  end
end

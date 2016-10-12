class RemoveBillableHoursFromDesignContracts < ActiveRecord::Migration[5.0]
  def change
    remove_column :design_contracts, :billable_hours, :integer
    remove_column :design_contracts, :signature, :integer
    add_column :design_contracts, :billable_hours, :integer, :default => 0
    add_column :design_contracts, :signature, :boolean, :default => false
  end
end

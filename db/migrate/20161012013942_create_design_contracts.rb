class CreateDesignContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :design_contracts do |t|
      t.string :designer
      t.string :client
      t.string :gig_id
      t.string :title
      t.string :due_date
      t.string :specs
      t.integer :billable_hours
      t.integer :signature

      t.timestamps
    end
  end
end

class CreateGigs < ActiveRecord::Migration[5.0]
  def change
    create_table :gigs do |t|
      t.integer :client_id
      t.integer :document_id

      t.timestamps
    end
  end
end

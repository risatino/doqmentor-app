class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :address
      t.string :notes
      t.integer :active_gigs
      t.integer :user_id

      t.timestamps
    end
  end
end

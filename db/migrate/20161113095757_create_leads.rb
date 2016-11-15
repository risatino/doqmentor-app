class CreateLeads < ActiveRecord::Migration[5.0]
  def change
    create_table :leads do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :company

      t.timestamps
    end
  end
end

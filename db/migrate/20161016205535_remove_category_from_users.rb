class RemoveCategoryFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :category, :string
  end
end

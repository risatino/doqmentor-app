class AddActiveToGigs < ActiveRecord::Migration[5.0]
  def change
    add_column :gigs, :active, :boolean, :default => true
  end
end

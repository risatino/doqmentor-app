class DesignContract < ApplicationRecord
  has_many :gigs
  has_many :images

  def change
    create_table :services do |t|

      t.boolean :recommend, :default => false
      t.timestamps
    end
  end

end

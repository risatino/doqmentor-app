class RemoveAvatarFromDesignContracts < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :design_contracts, :avatar
  end
end

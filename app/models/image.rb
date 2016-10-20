class Image < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :design_contract
  belongs_to :music_contract
  belongs_to :legal_contract
end

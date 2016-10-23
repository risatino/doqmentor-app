class ActiveContract < ApplicationRecord
  belongs_to :design_contract
  belongs_to :music_contract
  belongs_to :legal_contract
  belongs_to :user
  belongs_to :gig, optional: true
end

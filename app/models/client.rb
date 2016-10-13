class Client < ApplicationRecord
  belongs_to :user
  has_many :gigs, through: :design_contracts
  has_many :gigs, through: :music_contracts
  has_many :gigs, through: :legal_contracts
end

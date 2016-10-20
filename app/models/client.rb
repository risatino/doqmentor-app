class Client < ApplicationRecord
  belongs_to :user
  has_many :gigs
  has_many :design_contracts, through: :gigs
  has_many :music_contracts, through: :gigs
  has_many :legal_contracts, through: :gigs
end

class User < ApplicationRecord
  has_secure_password
  has_many :clients
  has_many :gigs, through: :clients
  has_many :active_contracts
  has_many :design_contracts, through: :gigs
  has_many :music_contracts, through: :gigs
  has_many :legal_contracts, through: :gigs
  has_many :images
end

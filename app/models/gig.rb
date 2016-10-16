class Gig < ApplicationRecord
  belongs_to :user
  has_many :clients
  has_many :design_contracts, through: :clients
  has_many :music_contracts, through: :clients
  has_many :legal_contracts, through: :clients
end

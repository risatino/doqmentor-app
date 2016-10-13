class Gig < ApplicationRecord
  belongs_to :user
  has_many :clients
  has_many :design_contracts
  has_many :music_contracts
  has_many :legal_contracts
end

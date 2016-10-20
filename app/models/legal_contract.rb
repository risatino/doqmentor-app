class LegalContract < ApplicationRecord
  has_many :gigs
  has_many :images
end

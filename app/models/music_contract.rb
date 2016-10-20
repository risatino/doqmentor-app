class MusicContract < ApplicationRecord
  has_many :gigs
  has_many :images
end

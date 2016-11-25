class Client < ApplicationRecord
  belongs_to :user
  has_many :gigs
  has_many :design_contracts, through: :gigs
  has_many :music_contracts, through: :gigs
  has_many :legal_contracts, through: :gigs
  has_many :images
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ""
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end

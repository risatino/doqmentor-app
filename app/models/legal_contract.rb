class LegalContract < ApplicationRecord
  has_many :gigs
  has_many :images
  has_attached_file :signature, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ""
  validates_attachment_content_type :signature, content_type: /\Aimage\/.*\z/
end

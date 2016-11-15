class Lead < ApplicationRecord
  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ""
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/
end

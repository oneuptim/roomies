class Photo < ApplicationRecord
  belongs_to :room

  has_attached_file :image, styles: { medium: "400x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  # validates_attachment_content_type :image, :content_type => /\Aimage/

  # Validate filename
  # validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]


end

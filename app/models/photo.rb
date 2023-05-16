class Photo < ApplicationRecord
  validates :description, presence: true, length: { maximum: 500 }
  validates :title, presence: true, length: { in: 3..50 }
  validates :image_url, presence: true, length: { in: 3..200 }, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  
  belongs_to :photographer



end



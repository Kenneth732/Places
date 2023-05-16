class Photographer < ApplicationRecord
    # validates :name, presence: true
    validates :name, length: { minimum: 2 }
    has_many :photos
end


class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :category, :discount, :image_url

  belongs_to :photographer
  # def summary 
  #   "#{self.object.title} - #{self.object.description[0..50]}"
  # end
end

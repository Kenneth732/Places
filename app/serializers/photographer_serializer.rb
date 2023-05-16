class PhotographerSerializer < ActiveModel::Serializer
  attributes :id, :name, :birthplace

  has_many :photos, serializer: PhotographerPhotoSerializer
end

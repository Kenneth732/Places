# class PhotoSummarySerializer < ActiveModel::Serializer
#   attributes :id, :title, :summary

#   def summary 
#     "#{self.object.title} - #{self.object.description[0..50]}"
#   end
# end


class PhotoSummarySerializer < ActiveModel::Serializer
  attributes :id, :title, :summary

  def summary 
    "#{object.title} - #{object.description[0..50]}"
  end
end

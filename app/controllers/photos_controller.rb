class PhotosController < ApplicationController
    
    def index
        photos = Photo.all 
        render json: photos
    end

    def show
        photo = Photo.find(params[:id])
        render json: photo
    end

    def create
        photo = Photo.new(photo_params)
    
        if photo.save
          render json: photo, status: :created
        else
          render json: { errors: photo.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def summary
        photo = Photo.find(params[:id])
        render json: photo, serializer: PhotoSummarySerializer
      end
      
      def summaries
        photos = Movie.all
        render json: photos, each_serializer: PhotoSummarySerializer
      end
      
  
    private
    def photo_params
      params.require(:photo).permit(:title, :description, :image_url, :photographer_id)
    end
    
  end
  

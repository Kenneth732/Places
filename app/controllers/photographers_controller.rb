class PhotographersController < ApplicationController
    def index
        photographers = Photographer.all 
        render json: photographers 
    end

    def show
        photographer = Photographer.find(params[:id])
        render json: photographer 
    end
      
    def create
        photographer = Photographer.create(photographer_params)
        if photographer.valid? 
            render json: photographer
        else
            render json: { errors: photographer.errors }, status: :unprocessable_entity
        end
    end
    def update
        photographer = Photographer.find(params[:id])
        if photographer.update(photographer_params)
            render json: photographer
        else
            render json: { errors: photographer.errors }, status: :unprocessable_entity
        end
    end

    private

    def photographer_params
       params.require(:photographer).permit(:name, :description, :birthplace)
    end

end

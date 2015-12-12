class ImagesController < ApplicationController
    
    
    def create
        
        Image.create(image_params)
        redirect_to root_path
    end
    
    private
    
    def image_params
        params.require(:image).permit(:urls)
    end
end

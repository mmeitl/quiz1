class ImagesController < ApplicationController
    def create
        @image = Image.find(params[:image_id])
        @image.urls.create(url_params)
        redirect_to static_path
    end
    
    private
    def url_params
        params.required(:image).permit(:urls)
    end
end

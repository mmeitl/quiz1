class StaticController < ApplicationController
    def index
        @images = Image.order("RANDOM()").first
    end
    
    def new
        @image = Image.new
    end
    
    def create
        
        Image.create(image_params)
        redirect_to root_path
    end
    
    def show
    end
    
    private
    
    def image_params
        params.require(:image).permit(:urls)
    end
end

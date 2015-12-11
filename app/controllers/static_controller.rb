class StaticController < ApplicationController
    def index
        @images = Image.all
    end
    
    def new
        @image = Image.new
    end
end

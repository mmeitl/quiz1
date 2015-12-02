class StaticController < ApplicationController
    def index
        @images = Image.order("RANDOM()").first
    end
end

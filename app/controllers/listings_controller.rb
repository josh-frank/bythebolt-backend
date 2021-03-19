class ListingsController < ApplicationController

    def index
        render json: Listing.all
    end

    def show
        render json: Listing.find( params[ :id ] )
    end

end

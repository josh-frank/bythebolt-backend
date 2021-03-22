class FavoriteListingsController < ApplicationController

    before_action :authenticate, only: [ :create, :destroy ]

    def create
        FavoriteListing.create( user_id: @current_user.id, listing_id: params[ :listing_id ] )
        render json: @current_user
    end

    def destroy
        FavoriteListing.find( params[ :id ] ).destroy
        render json: @current_user
    end

end

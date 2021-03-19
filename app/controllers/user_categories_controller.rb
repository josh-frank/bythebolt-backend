class UserCategoriesController < ApplicationController

    before_action :authenticate, only: [ :create, :destroy ]

    def create
        new_user_category = UserCategory.create( user_category_params )
        render json: @current_user
    end

    def destroy
        UserCategory.destroy( params[ :id ] )
        render json: @current_user
    end

    private

    def user_category_params
        params.require( :user_category ).permit( :id, :user_id, :category_id )
    end

end

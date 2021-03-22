class ListingsController < ApplicationController

    before_action :authenticate, only: [ :destroy ]

    def index
        render json: Listing.all
    end

    def show
        render json: Listing.find( params[ :id ] )
    end

    def create
        new_listing = Listing.create(
            user_id: params[ :user_id ],
            title: params[ :title ] == "undefined" ? nil : params[ :title ],
            description: params[ :description ] == "undefined" ? nil : params[ :description ],
            price: params[ :price ] == "undefined" ? nil : params[ :price ].to_f,
            quantity: params[ :quantity ] == "undefined" ? nil : params[ :quantity ].to_i,
            unit: [ "null", "undefined" ].include?( params[ :unit ] ) ? nil : params[ :unit ]
        )
        if new_listing.valid?
            new_listing_image_urls = []
            params[ :images ].each_with_index do | image, index |
                new_image_data = Cloudinary::Uploader.unsigned_upload(
                    image,
                    "zvedamwb",
                    cloud_name: "bythebolt",
                    public_id: "listing_#{ new_listing.id }_image_#{ index }",
                    folder: "listings/#{ new_listing.id }"
                )
                new_listing_image_urls << new_image_data[ "url" ]
            end
            new_listing.update( image_urls: new_listing_image_urls )
            params[ :categories ].map( &:to_i ).each do | category_id |
                ListingCategory.create( listing_id: new_listing.id, category_id: category_id )
            end
            render json: new_listing
        else
            render json: { errors: new_listing.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        Listing.find( params[ :id ] ).destroy
        render json: @current_user
    end

    private

    def listing_params
        params.permit!
    end

end

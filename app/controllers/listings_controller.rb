class ListingsController < ApplicationController

    def index
        render json: Listing.all
    end

    def show
        render json: Listing.find( params[ :id ] )
    end

    def create
        new_listing = Listing.create(
            user_id: params[ :user_id ],
            title: params[ :title ],
            description: params[ :description ],
            price: params[ :price ].to_i,
            quantity: params[ :quantity ].to_i,
            unit: params[ :unit ]
        )
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
        render json: new_listing
    end

    private

    def listing_params
        params.require( :listing ).permit!
    end

end

class ListingsController < ApplicationController

    before_action :authenticate, only: [ :create, :update, :destroy ]

    def index
        render json: Listing.all
    end

    def show
        render json: Listing.find( params[ :id ] )
    end

    def create
        new_listing = Listing.create(
            user_id: @current_user.id,
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

    def update
        if params[ :title ].empty? || params[ :description ].empty?
            errors = []
            errors << "Title can't be blank" if params[ :title ].empty?
            errors << "Description can't be blank" if params[ :description ].empty?
            render json: { errors: errors }, status: :unprocessable_entity
        else
            listing_to_edit = Listing.find( params[ :id ] )
            updated_listing_image_urls = params[ :image_urls ]
            listing_to_edit.update(
                title: params[ :title ],
                description: params[ :description ],
                price: params[ :price ].to_f,
                quantity: params[ :quantity ].to_i,
                unit: [ "null", "undefined" ].include?( params[ :unit ] ) ? nil : params[ :unit ],
            )
            if params[ :new_images ]
                params[ :new_images ].each_with_index do | image, index |
                    new_image_data = Cloudinary::Uploader.unsigned_upload(
                        image,
                        "zvedamwb",
                        cloud_name: "bythebolt",
                        public_id: "listing_#{ listing_to_edit.id }_image_#{ index + params[ :image_urls ].length }",
                        folder: "listings/#{ listing_to_edit.id }"
                    )
                    updated_listing_image_urls << new_image_data[ "url" ]
                end
            end
            listing_to_edit.update( image_urls: updated_listing_image_urls )
            ListingCategory.where( listing_id: listing_to_edit.id ).destroy_all
            params[ :categories ].map( &:to_i ).each do | category_id |
                ListingCategory.create( listing_id: listing_to_edit.id, category_id: category_id )
            end
            render json: listing_to_edit
        end
    end

    def destroy
        Listing.find( params[ :id ] ).destroy
        render json: @current_user
    end

    private

    def listing_params
        params.require( :listing ).permit!
    end

end

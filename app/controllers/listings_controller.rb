class ListingsController < ApplicationController

    before_action :authenticate, only: [ :create, :update, :destroy ]

    def index
        render json: Listing.all
    end

    def search
        all_results = Listing.where( "lower( title ) LIKE ?", "%" + ( params[ :query ] ? params[ :query ] : "" ) + "%" )
        case params[ :sort ]
        when "newest"
            all_results = all_results.sort_by( &:created_at ).reverse
        when "nearest"
            all_results = all_results.sort_by{ | listing | distance_between( listing.user.location, params[ :location ].split( "," ).map( &:to_f ) ) } unless params[ :location ].blank?
        when "price-asc"
            all_results = all_results.sort_by( &:price )
        when "price-desc"
            all_results = all_results.sort_by( &:price ).reverse
        end
        filtered_results = all_results.select{ | listing | params[ :category ].blank? ? true : listing.categories.map( &:name ).include?( params[ :category ] ) }
        search_results = paginate filtered_results, per_page: params[ :per_page ]
        result_categories = all_results.map{ | listing | listing.listing_categories.map{ | listing_category | listing_category.category.name } }.flatten
        render json: {
            listings: search_results.map{ | listing | ListingSerializer.new( listing ) },
            categories: Hash[ result_categories.uniq.collect{ | category | [ category, result_categories.count( category ) ] } ],
            metadata: pagination_metadata( search_results )
        }
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
            if params[ :images ]
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
            end
            new_listing.update( image_urls: new_listing_image_urls )
            if params[ :categories ]
                params[ :categories ].map( &:to_i ).each do | category_id |
                    ListingCategory.create( listing_id: new_listing.id, category_id: category_id )
                end
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

    def pagination_metadata( search_results )
        {        
            current_page: search_results.current_page,
            next_page: search_results.next_page,
            prev_page: search_results.prev_page,
            total_pages: search_results.total_pages,
            total_count: search_results.total_count
        }    
    end

    def degrees_to_radians( degrees )
        degrees * ( Math::PI / 180 )
    end

    def distance_between( these_coordinates, those_coordinates )
        this_latitude = these_coordinates[ 0 ]
        this_longitude = these_coordinates[ 1 ]
        that_latitude = those_coordinates[ 0 ]
        that_longitude = those_coordinates[ 1 ]
        # Earth's radius in km
        # earths_radius = 6371
        # Earth's radius in mi
        earths_radius = 3958.8
        latitude_distance = degrees_to_radians( that_latitude - this_latitude )
        longitude_distance = degrees_to_radians( that_longitude - this_longitude )
        a = Math.sin( latitude_distance / 2 ) * Math.sin( latitude_distance / 2 ) + Math.cos( degrees_to_radians( this_latitude ) ) * Math.cos( degrees_to_radians( that_latitude ) ) * Math.sin( longitude_distance / 2 ) * Math.sin( longitude_distance / 2 )
        c = 2 * Math.atan2( Math.sqrt( a ), Math.sqrt( 1 - a ) )
        return earths_radius * c
    end

end

class UsersController < ApplicationController

    before_action :authenticate, only: [ :profile, :update ]

    def login
        user = User.find_by( username: params[ :username ] )
        if user && user.authenticate( params[ :password ] ) && params[ :password ] == params[ :confirmation ]
            token = JWT.encode( { user_id: user.id }, "my$ecretK3y", "HS256" )
            render json: { user: UserSerializer.new( user ), token: token }
        elsif params[ :password ] != params[ :confirmation ]
            render json: { errors: [ "Password and confirmation must match" ] }, status: :unauthorized
        else
            render json: { errors: [ "Invalid username or password" ] }, status: :unauthorized
        end
    end

    def signup
        if params[ :password ] == params[ :confirmation ]
            new_user = User.create( params.permit( :username, :email, :password ) )
            if new_user.valid?
              token = JWT.encode( { user_id: new_user.id }, 'my$ecretK3y', 'HS256' )
              render json: { user: UserSerializer.new( new_user ), token: token }, status: :created
            else
              render json: { errors: new_user.errors.full_messages }, status: :unprocessable_entity
            end
        else
            render json: { errors: [ "Password and confirmation must match" ] }, status: :unauthorized
        end
    end

    def profile
        render json: @current_user
    end

    def show
        render json: User.find( params[ :id ] )
    end

    def update
        if params[ :avatar ]
            avatar_data = Cloudinary::Uploader.unsigned_upload(
                params[ :avatar ],
                "zvedamwb",
                cloud_name: "bythebolt",
                public_id: "#{ @current_user.username }_avatar",
                folder: "avatars" )
            @current_user.update( avatar_url: avatar_data[ "url" ] )
        else
            @current_user.update( user_params )
        end
        render json: @current_user
    end

    private

    def user_params
        params.require( :user ).permit!
    end

end

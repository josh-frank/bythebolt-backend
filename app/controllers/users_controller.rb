class UsersController < ApplicationController

    before_action :authenticate, only: [ :profile ]

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
        user_to_update = User.find( params[ :id ] )
        user_to_update.update( username: params[ :username ], password: params[ :password ], avatar: params[ :avatar ], email: params[ :email ] )
        render json: user_to_update
    end

end

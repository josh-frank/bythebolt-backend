class ApplicationController < ActionController::API

    def authenticate
        authorization_header = request.headers[ "Authorization" ]
        token = authorization_header.split.last
        payload = JWT.decode( token, 'my$ecretK3y', true, { algorithm: "HS256" } )[ 0 ]
        @current_user = User.find_by( id: payload[ "user_id" ] )
      rescue
        render json: { errors: [ "Unauthorized" ] }, status: :unauthorized
    end
    
end

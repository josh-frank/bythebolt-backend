class ChatsController < ApplicationController

    def show
        render json: Chat.find( params[ :id ] )
    end

end

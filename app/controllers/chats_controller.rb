class ChatsController < ApplicationController

    before_action :authenticate, only: [ :create ]

    def show
        render json: Chat.find( params[ :id ] )
    end

    def create
        # byebug
        listing_to_chat_about = Listing.find( chat_params[ :listing_id ] )
        new_chat = Chat.create( listing: listing_to_chat_about, subject: listing_to_chat_about.title )
        Message.create(
            content: "Hi, let's chat about #{ listing_to_chat_about.title }!",
            user: listing_to_chat_about.user,
            chat: new_chat
        )
        Message.create(
            content: chat_params[ :message_content ],
            user: @current_user,
            chat: new_chat
        )
        render json: { current_user: UserSerializer.new( @current_user ), new_chat: new_chat }
    end

    private

    def chat_params
        params.permit( :listing_id, :message_content )
    end

end

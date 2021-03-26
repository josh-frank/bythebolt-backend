class MessagesController < ApplicationController

    before_action :authenticate, only: [ :create ]

    def create
        sent_message = Message.create( message_params )
        if sent_message.valid?
            ChatChannel.broadcast_to( Chat.find( message_params[ :chat_id ] ), MessageSerializer.new( sent_message ) )
            render json: { current_user: UserSerializer.new( @current_user ), sent_message: sent_message }
        end
    end

    private

    def message_params
        params.require( :message ).permit( :content, :chat_id, :user_id )
    end


end
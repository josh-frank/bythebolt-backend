class MessagesController < ApplicationController

    def create
        sent_message = Message.create( message_params )
        if sent_message.valid?
            render json: sent_message
            ChatChannel.broadcast_to( Chat.find( message_params[ :chat_id ] ), MessageSerializer.new( sent_message ) )
        end
    end

    private

    def message_params
        params.require( :message ).permit( :content, :chat_id, :user_id )
    end

end

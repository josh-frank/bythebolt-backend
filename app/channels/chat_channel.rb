class ChatChannel < ApplicationCable::Channel

  def subscribed
    stream_for Chat.find( params[ :chat_id ] )
  end

  def unsubscribed
    stop_stream_for Chat.find( params[ :chat_id ] )
  end

end

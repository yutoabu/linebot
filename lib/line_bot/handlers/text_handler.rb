module LineBot
  module Handlers
    class TextHandler
      def self.handle(event)
        text = event.message['text']
        message = { type: 'text', text: text }
        Client.reply_message(event['replyToken'], message)
      end
    end
  end
end

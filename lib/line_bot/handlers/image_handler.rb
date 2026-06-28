module LineBot
  module Handlers
    class ImageHandler
      def self.handle(event)
        message = { type: 'text', text: '画像です' }
        Client.reply_message(event['replyToken'], message)
      end
    end
  end
end

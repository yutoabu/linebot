module LineBot
  module Handlers
    class StickerHandler
      def self.handle(event)
        message = { type: 'text', text: 'スタンプです' }
        Client.reply_message(event['replyToken'], message)
      end
    end
  end
end

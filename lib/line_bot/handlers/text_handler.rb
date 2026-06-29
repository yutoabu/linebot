module LineBot
  module Handlers
    class TextHandler
      def self.handle(event)
        text = event.message['text']
        message = { type: 'text', text: text }
        Client.reply_message(event['replyToken'], message)
      end

      def self.omikuji(event)
        fortunes = ["大吉", "中吉", "小吉", "吉", "末吉", "凶"]
        text = fortunes.sample
        message = {
          type: 'text',
          text: "あなたの運勢は...【#{text}】です！"
        }
        Client.reply_message(event['replyToken'], message)
      end
    end
  end
end

module LineBot
  module Handlers
    class MessageHandler
      def self.handle(event)
        case event.type
        when Line::Bot::Event::MessageType::Text
          if event.message['text'] == "おみくじ"
            TextHandler.omikuji(event)
          else
            TextHandler.handle(event)
          end
        when Line::Bot::Event::MessageType::Image
          ImageHandler.handle(event)
        when Line::Bot::Event::MessageType::Sticker
          StampHandler.handle(event)
        end
      end
    end
  end
end

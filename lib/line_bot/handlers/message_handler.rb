module LineBot
  module Handlers
    class MessageHandler
      def self.handle(event)
        case event.type
        when Line::Bot::Event::MessageType::Text
          TextHandler.handle(event)
        when Line::Bot::Event::MessageType::Image
          ImageHandler.handle(event)
        end
      end
    end
  end
end

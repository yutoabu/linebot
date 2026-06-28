module LineBot
  class Client
    def self.instance
      @client ||= Line::Bot::Client.new do |config|
        config.channel_secret = ENV['LINE_CHANNEL_SECRET']
        config.channel_token  = ENV['LINE_CHANNEL_TOKEN']
      end
    end

    def self.validate_signature(body, signature)
      instance.validate_signature(body, signature)
    end

    def self.parse_events_from(body)
      instance.parse_events_from(body)
    end

    def self.reply_message(reply_token, message)
      instance.reply_message(reply_token, message)
    end
  end
end

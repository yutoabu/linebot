require 'sinatra'
require 'line/bot'
require_relative 'config/environment'
require_relative 'lib/line_bot'

# LINEからのWebhookを受け取るエンドポイント
post '/callback' do
  body = request.body.read
  signature = request.env['HTTP_X_LINE_SIGNATURE']
  
  unless LineBot::Client.validate_signature(body, signature)
    return error 400 do 'Bad Request' end
  end

  events = LineBot::Client.parse_events_from(body)
  events.each do |event|
    if event.is_a?(Line::Bot::Event::Message)
      LineBot::Handlers::MessageHandler.handle(event)
    end
  end
  
  'OK'
end

get '/' do
  'LINE Bot is running!'
end

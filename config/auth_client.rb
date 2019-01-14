require "twitter"

def auth_client
  Twitter::REST::Client.new do |config|
    config.consumer_key        = <Sua consumer_key>
    config.consumer_secret     = <Sua consumer_secret>
    config.access_token        = <Sua access_token>
    config.access_token_secret = <Sua access_token_secret>
  end
end
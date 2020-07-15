require 'dotenv' # Appelle la gem Dotenv
require 'twitter'
Dotenv.load('.env') # appelle le fichier .env 



client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

# ligne qui permet de tweeter sur ton compte
client.update('Mon premier tweet en Ruby !!!!')
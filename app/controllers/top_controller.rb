class TopController < ApplicationController
  def index
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = "9uzBglY1PFv5X921MGqwwIyRa"
      config.consumer_secret     = "V0vRH9VbkrGcqYUIkszz6bnYgCEfUmKoRY9py2E0Zf1UOj6kuD"
      config.access_token        = session[:oauth_token]
      config.access_token_secret = session[:oauth_token_secret]
     end
    client.update("test tweet from rails app for 元日ハッカソン！")
  end
end

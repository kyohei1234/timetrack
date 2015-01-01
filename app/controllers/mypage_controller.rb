class MypageController < ApplicationController
  def index
  	@user = current_user
  end

  def tweet
    client = Twitter::REST::Client.new do |config|
      config.consumer_key        = Settings.twitter_key
      config.consumer_secret     = Settings.twitter_secret
      config.access_token        = session[:oauth_token]
      config.access_token_secret = session[:oauth_token_secret]
    end
    client.update("眠くなってきた、、こっから！")
    redirect_to mypage_index_path
  end
end

require 'readline'

module TweetConsole
  def self.list_tweets user_name=nil, is_me=false
    page = 1
    while true
      if is_me
        tweets = auth_client.user_timeline(page: page, count: 5, tweet_mode: 'extended')
      else
        tweets = auth_client.user_timeline(user_name, page: page, count: 5, tweet_mode: 'extended')
      end

      tweets.each do |t|
        puts ""
        Printc.pair("Texto", t.attrs[:full_text], :yellow, :white, 0.1)
        Printc.pair("Numero de retweets", t.retweet_count, :yellow, :white, 0.1)
        puts ""
      end

      option = menu(
        "O que prefere?",
        {
          "Voltar ao menu": :exit,
          "Ver mais tweets?": :more_tweets
        }
      )

      if option == :exit
        break
      elsif option == :more_tweets
        page += 1
      end
    end
  end
end
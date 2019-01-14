require 'readline'

module TweetConsole
  def self.profile
    while true 
      
      user = auth_client.user
      
      TweetConsole::user_info(user)

      option = menu(
        "O que prefere?",
        {
          "Voltar ao menu": :exit,
          "Ver seus tweets": :tweets
        }
      )

      if option == :tweets
        TweetConsole::list_tweets(nil, true)
        break
      elsif option == :exit
        break
      end
    end
  end
end
require 'readline'

module TweetConsole
  def self.other_profile
    while true 
      Printc.title 'Qual usuário você gostaria?', :green, 1, true
      user_name = Readline.readline("►► ")
      
      u = auth_client.user(user_name)
      
      TweetConsole::user_info(u)

      option = menu(
        "O que prefere?",
        {
          "Voltar ao menu": :exit,
          "Pesquisar outro usuário": :other_user,
          "Ver os tweets do usuário": :tweets
        }
      )

      if option == :tweets
        TweetConsole::list_tweets(user_name)
        break
      elsif option == :exit
        break
      end
    end
  end
end
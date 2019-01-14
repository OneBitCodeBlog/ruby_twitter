require 'readline'

module TweetConsole
  def self.search
    while true 
      Printc.title 'Qual o termo que você quer pesquisar?', :green, 1, true
      option = Readline.readline("►► ")

      tweets = auth_client.search("#{option} -rt", count: 10, tweet_mode: 'extended', result_type: "recent").take(10)

      tweets.each do |t|
        puts ""
        Printc.pair("Texto", t.attrs[:full_text], :yellow, :white, 0.1)
        Printc.pair("Usuário", t.user.name, :yellow, :white, 0.1)
        Printc.pair("Numero de retweets", t.retweet_count, :yellow, :white, 0.1)
        puts ""
      end

      option = menu(
        "O que prefere?",
        {
          "Realizar outra pesquisa": :search,
          "Voltar ao menu": :exit,
        }
      )

      break if option == :exit
    end
  end
end
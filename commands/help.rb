module TweetConsole
  def self.help
    Printc.title "Lista de comandos", :green, 1, true
    Printc.pair('Tweetar', 'Criação de um novo Tweet (desafio 1)', :yellow, :white, 0.1)
    Printc.pair('Ver o meu perfil', 'Suas informações e tweets', :yellow, :white, 0.1)
    Printc.pair('Ver o perfil de outro usuário', 'Informações e tweets de outros usuários', :yellow, :white, 0.1)
    Printc.pair('Pesquisar', 'Pesquisa por texto e hashtag', :yellow, :white, 0.1)
  end
end
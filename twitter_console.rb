Dir["./helpers/*.rb"].each {|file| require file }
Dir["./commands/**/*.rb"].each {|file| require file }
Dir["./config/*.rb"].each {|file| require file }


puts `clear`

begin
  while true
    command = menu(
      "O que você deseja fazer?",
      {
        "Tweetar": :new_tweet,
        "Ver o meu perfil": :profile,
        "Ver o perfil de outro usuário": :other_profile,
        "Pesquisar": :search,
        "Ajuda": :help,
        "Sair": :exit
      }
    )

    case command
    when :new_tweet
      puts 'Essa é uma missão para você programador'
    when :profile
      TweetConsole::profile()
    when :other_profile
      TweetConsole::other_profile()
    when :search
      TweetConsole::search()
    when :help
      TweetConsole::help()
    when :exit
      Printc.title "Obrigado por estar com o OneBitCode.com, Até a próxima ❤", :yellow, 2, true
      break
    end
  end
rescue Interrupt => e
  Printc.title "Obrigado por estar com o OneBitCode.com, Até a próxima ❤", :yellow, 2, true
end
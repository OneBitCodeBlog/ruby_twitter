require 'readline'

def menu(title, options, sleet_time=1,clear=false)
  option = nil

  while true
    Printc.title "#{title}     ◼◼◼     ➤ OneBitCode.com/ruby_twitter", :green, sleet_time, clear
    options.each_with_index do |(key,value),i|
      puts "#{i}) #{key}"
    end
    option = Readline.readline("►► ")
    if option !~ /\D/ and option.to_i.between?(0, options.count - 1)
      break
    else
      Printc.pair("Aviso:", 'Opção inválida', :yellow, :white, sleet_time)
    end
  end
  
  options.values[option.to_i]
end
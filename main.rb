require 'colorize'


def puts_git(cmd)
    puts `puts git #{cmd} -h`
end
    def menu
    puts 'MAIN MENU'.colorize(:cyan)
    puts '1:  Enter git command'.colorize(:cyan)
    puts '2:  Exit'.colorize(:cyan)
    choice = get.to_i
    end
  case choice
    when 1 
        puts 'Enter a git command'.colorize(:green)
        puts_git(gets.strip)
        menu
    when 2
        exit
    else
        puts 'Invalid Choice'.colorize(:red)
        menu
    end
  end
end

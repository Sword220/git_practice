def puts_git(cmd)
    puts `puts git #{cmd} -h`
end
    def menu
    puts '1:  Enter git command'
    puts '2:  Exit'
    choice = get.to_i

  case choice
    when 1 
        puts 'Enter a git command'
        puts_git(gets.strip)
        menu
    when 2
        exit
    else
        puts 'Invalid Choice'
        menu
    end
  end
end

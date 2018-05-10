require 'colorize'
class 
def puts_git(cmd)
  puts `git #{cmd} -h`
end

include Git

def self.menu
  puts 'MAIN MENU'.colorize(:cyan)
  puts '1: Enter git command'.colorize(:cyan)
  puts '2: Exit'.colorize(:cyan)
  choice = gets.to_i

  case choice
    when 1
      puts 'Enter a git command'.colorize(:green)
      Git.puts_git(gets.strip)
      menu
    when 2
      exit
    else
      puts 'Invalid Choice'.colorize(:red)
      menu
  end
end

Main.menu
require 'colorize'
require_relative 'git'

class Main
  include Git

  def self.menu
    puts 'MAIN MENU'.colorize(:cyan)
    puts '1: Enter git command'.colorize(:cyan)
    puts '2: Exit'.colorize(:cyan)
    choice = gets.to_i
  
    case choice
      when 1
        puts 'Enter a git command'.colorize(:green)
        Git.puts_git(gets.strip)
        menu
      when 2
        exit
      else
        puts 'Invalid Choice'.colorize(:red)
        menu
    end
  end
end

Main.menu

Message Input

Message uofu_summer_2018
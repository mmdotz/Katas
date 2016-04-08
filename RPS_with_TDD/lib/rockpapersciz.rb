#user choice
#computer choice
#compare both
#declare winner based on
  # rock beats scissors
  # paper beats rock
  # scissors beat paper

class Game

  def initialize
    @choices = ["rock", "paper","scissors"]
  end

  def play_again
    puts "Would you like to play again(y/n)?"
    answer = gets.chomp.downcase
    if answer == "y"
      start_game
    else
      exit
    end
  end

  def start_game
    puts "Would you like to choose rock, paper, or scissors?"
    user_choice = gets.chomp.downcase
    computer_choice = @choices.sample

    if computer_choice == user_choice
      puts "You both chose #{user_choice}. It's a tie."
      play_again
    end

    if user_choice == "rock"
      if computer_choice == "paper"
        winner = computer_choice
      elsif
        computer_choice == "scissors"
        winner = user_choice
      end
    elsif user_choice == "paper"
      if computer_choice == "rock"
        winner = user_choice
      elsif
        computer_choice == "scissors"
        winner = computer_choice
      end
    else
      if computer_choice == "paper"
        winner = user_choice
      elsif
        computer_choice == "rock"
        winner = computer_choice
      end
    end
    puts "You chose #{user_choice} and the computer chose #{computer_choice}. #{winner.capitalize} wins"
    play_again
  end
end

game = Game.new.start_game

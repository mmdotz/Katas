#user choice
#computer choice
#compare both
#declare winner based on
  # rock beats scissors
  # paper beats rock
  # scissors beat paper

class Game

  choices = ["rock", "paper","scissors"]

  def start_game
    puts "Would you like to choose rock(1), paper(2), or scissors(3)?"
    user_choice = gets.chomp
    puts user_choice
  end




end

# game = Game.new.start_game

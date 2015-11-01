require 'pry'

CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

def display_welcome_message
  puts "=> Welcome to the Paper, Rock, Scissors Game!"
end

def print_choice(who, move)
  case move 
  when "p"
    puts "=>#{who} chose Paper!"
  when "r"
    puts "=>#{who} chose Rock!"
  when "s"
    puts "=>#{who} chose Scissor!"
  end
end

def display_result(player_move, computer_move)
  if player_move == computer_move 
    puts "It's a tie!"
  elsif (player_move == "p" && computer_move == "r") || 
        (player_move == "r" && computer_move == "s") ||
        (player_move == "s" && computer_move == "p")     
    puts "You win!"
  else 
    puts "You lose!"
  end
end

def get_player_choice
  move = ''
  begin 
    puts "Please choose your move: (P/R/S)"
    move = gets.chomp.downcase
  end until CHOICES.keys.include?(move)
  move
end

def get_computer_choice
   CHOICES.keys.sample
end

def play_again?
   puts "Would you like to play again?(Y/N)"
   gets.chomp.downcase == "y"
end

loop do

 
  player_move = get_player_choice
  print_choice("You", player_move)
 
  computer_move = get_computer_choice
  print_choice("Computer", computer_move)

  display_result(player_move, computer_move)
  break if !play_again?
  
end

require 'pry'

CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

#1. Display Playing Message

puts "=> Welcome to the Paper, Rock, Scissors Game!"


#2. Choose your move
loop do

# until ("p").include?(player_move) ||
#       ("r").include?(player_move) ||
#       ("s").include?(player_move)
#   puts "Please choose between [P]aper, [S]cissors and [R]ock!"
#   player_move = gets.chomp.downcase
# end

begin 
  puts "Please choose your move: (P/R/S)"
  player_move = gets.chomp.downcase
end until CHOICES.keys.include?(player_move)

case player_move 
  when "p"
    puts "=>You chose Paper!"
  when "r"
    puts "=>You chose Rock!"
  when "s"
    puts "=>You chose Scissor!"
end

#3. Randomly choose computer's move

computer_move = CHOICES.keys.sample

case computer_move 
  when "p"
    puts "=>Computer chose Paper!"
  when "r"
    puts "=>Computer chose Rock!"
  when "s"
    puts "=>Computer chose Scissor!"
end

#4. Display the result

if player_move == computer_move 
  puts "It's a tie!"
elsif (player_move == "p" && computer_move == "r") || 
      (player_move == "r" && computer_move == "s") ||
      (player_move == "s" && computer_move == "p")     
  puts "You win!"
else 
  puts "You lose!"
end

#5. Play Again?

puts "Would you like to play again?(Y/N)"
break if gets.chomp.downcase != "y"

end

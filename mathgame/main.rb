require './question_class'
require './player_class'
require './helper_functions.rb'

player1 = Player.new(1)
player2 = Player.new(2)

# if player_toggle is true, score for PLayer1 will be affected
# if false, score for Player2 will be affected.
player_toggle = true

while player1.lives > 0 && player2.lives > 0

  puts "----- NEW TURN -----"
  
  question = Question.new
  
  if player_toggle == true
    current_player = player1
  else
    current_player = player2
  end

  print current_player.name + ": "
  print question.question

  response = $stdin.gets.chomp.to_i

  if question.answer_check(response) == true
    puts current_player.name + ": Yes! You are correct."
  else
    puts current_player.name + ": Seriously!? NO!!"
    current_player.lose_a_life
  end

  puts "P1 : #{player1.lives}/3 vs P2 #{player2.lives}/3"

  player_toggle = !player_toggle
  
end

if player1.lives == 0
  puts "Player 2 wins with a score of #{player2.lives}/3"
else
  puts "Player 1 wins with a score of #{player1.lives}/3"
end

puts "----- GAME OVER -----"
puts "Good bye!"

puts "You sit at a poker table with $300. The game is hold 'em"
puts "The dealer gives you pocket queens, hearts and diamonds."
puts "Do you bet $50, check, or fold?"
puts "Enter 'a' to bet, 'b' to check, or any other key to fold."
print "> "

answer = $stdin.gets.chomp

if answer == 'a'
  puts "One other player also calls. The pot is $100"
  puts "the flop shows 8 hearts, 9 diamonds, 10 diamonds"
  puts "Do you bet $50, check, or fold?"
  puts "Enter 'a' to bet, 'b' to check, or any other key to fold."
  print "> "

  answer2 = $stdin.gets.chomp

  if answer2 == 'a'
    puts "Your opponent goes all in. He has more money than you. Calling will cost you all your remaining funds."
    puts "do you call or fold?"
    puts "Enter 'a' to call or any other key to fold."
    pring "> "

    answer3 = $stdin.gets.chomp

    if answer3 == 'a'
      puts "The dealer flips a jack of spades. You have a straight."
      puts "Your opponent has two pairs, 9s and 10s."
      puts "You win!"
    else
      puts "You fold. You have $250 remaining"
    end

  elsif answer2 == 'b'
    puts "Your opponent also checks. The dealer flips a jack of spades. You have a straight."
    puts "Do you bet $50, check or fold?"
    puts "Enter 'a' to call or any other key to fold."
    pring "> "

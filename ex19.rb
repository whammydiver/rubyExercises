def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!!"
  puts "Man, that's enough for a party!"
  puts "Get a blanket. \n"
end

print "how many cheeses do you have? "
cheese = gets.chomp

print "and how many crackers? "
crackers = gets.chomp

cheese_and_crackers(cheese, crackers)

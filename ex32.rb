the_count = [1, 2, 3, 4, 5]

for number in the_count
  puts "This is the count #{number}"
end

fruits = ['apples', 'oranges', 'pears', 'apricots']

fruits.each do |fruit|
  puts "Fruit : #{fruit}"
end

change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

change.each {|i| puts "I got #{i}"}

elements = []

(0..5).each do |i|
  puts "adding #{i} to the list."
  elements << i
end

elements.each {|i| puts "Elements was: #{i}"}

the_count.each do |number|
  puts "the_count.each do |number| loop: #{number}"
end

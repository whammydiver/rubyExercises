def whileloop(num, plus_by)

  i = 0
  numbers = []

  while i < num
    puts "At the top i is #{i}"
    numbers << i

    i += plus_by
    puts "Numbers now: ", numbers
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "

  numbers.each {|num| puts num }
end

whileloop(6, 2)

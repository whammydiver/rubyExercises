def print_result(&block)
  result_from_block = block.call
  puts result_from_block
end

# %w is an awesome keystroke saver when making arrays
list = %w[item1 item2 item3 4 7 people aeroplane]

print_result do
  sample = list.sample
  "Random item: #{sample}"
end

puts list.first
puts list.last
puts list[-1]

# start at index 1, list 2 index content values
puts list[3,3]

puts list.reverse

puts list.include?('people')

listmess = list.map do |element|
  element << 'messy'
end

puts listmess.map(&:upcase)

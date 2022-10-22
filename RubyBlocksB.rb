def print_result(&block)
  result_from_block = block.call
  puts result_from_block
end

list = ['item1', 'item2', 'item3']

print_result do
  sample = list.sample
  "Random item: #{sample}"
end

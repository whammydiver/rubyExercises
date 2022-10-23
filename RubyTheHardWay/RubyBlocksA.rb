def print_result
  result_from_block = yield
  puts result_from_block
end

shopping_list = [:milk, :eggs, :cheese]
print_result do
  important_item = shopping_list.sample
  "I hope I don't forget #{important_item}!"
end

print_result do
  creature = "walrus"
  "I am the #{creature}!"
end

print_result {3*3}

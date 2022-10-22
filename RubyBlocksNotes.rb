# creates a function called print_results
# you can pass in an argument even though there is no
# parentheses after it. The argument passed in is there
# yield

def print_result
  result_from_block = yield
  puts result_from_block
end

# calling the function with an argument
print_results {3*3}


# You can also specify an argument is required. sample
# below. DON'T FORGET THE AMPERSAND AHEAD OF THE argument!!

def print_result(&block)
  result_from_block = block.call
  puts result_from_block
end

# Sum Nums

Write a method that takes in an integer `num` and returns the sum of all integers between zero and num, up to and including `num`.

## The Setup

``` ruby
def sum_nums(num)
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #sum_nums")
puts("===============================================")
    puts('sum_nums(1) == 1: ' + (sum_nums(1) == 1).to_s)
    puts('sum_nums(2) == 3: ' + (sum_nums(2) == 3).to_s)
    puts('sum_nums(3) == 6: ' + (sum_nums(3) == 6).to_s)
    puts('sum_nums(4) == 10: ' + (sum_nums(4) == 10).to_s)
    puts('sum_nums(5) == 15: ' + (sum_nums(5) == 15).to_s)
puts("===============================================")
```

## The Solution

```ruby
def sum_nums(num)
  # End code num is less than 0
  if num < 0
    return nil
  end

  # Create a variable to return our value
  result = 0

  # Create a counter it iterate our loop
  i = 0
  
  # Loop through our values
  while i <= num
    # Add our counter value to existing results variable
    result = result + i
    # Increment by 1
    i += 1
  end

  # Return our Results
  return result

end

#sum_nums(0) # nil
#sum_nums(1) # 1
#sum_nums(2) # 3
sum_nums(3) # 6
```
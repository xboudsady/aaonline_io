# Third Greatest

Write a method that takes an array of numbers in. Your method should return the third greatest number in the array. You may assume that the array has at least three numbers in it.

## Setup

```ruby
def third_greatest(nums)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #third_greatest")
puts("===============================================")
    puts(
      'third_greatest([5, 3, 7]) == 3: ' +
      (third_greatest([5, 3, 7]) == 3).to_s
    )
    puts(
      'third_greatest([5, 3, 7, 4]) == 4: ' +
      (third_greatest([5, 3, 7, 4]) == 45.to_s
    )
    puts(
      'third_greatest([2, 3, 7, 4]) == 3: ' +
      (third_greatest([2, 3, 7, 4]) == 3).to_s
    )
puts("===============================================")
```

## Solution

```ruby
def third_greatest(nums)
  # Create three variables to store value
  first = nil
  second = nil
  third = nil

  i = 0
  
  # Loop through our array of numbers
  while i < nums.length
    # Create a variable of the current nums[i] index value
    value = nums[i]

    # First condition test if 'first' value is empty
    # Second condition test if the index value is greater than first (yes, because its empty -- code execute)
    if first == nil || value > first
      # Shuffle the value placement
      third = second
      second = first
      # The highest value is assign to first
      first = value
    elsif second == nil || value > second
      third = second
      # Assign our second value
      second = value
    elsif third == nil || value > third
      # Assign our third value
      third = value
    end

    # increment our Loop
    i += 1
  end

  # We only want to return the third value
  return third
end

puts third_greatest([5, 3, 7]) == 3 # true
puts third_greatest([5, 3, 7, 4]) == 4 # true
puts third_greatest([2, 3, 7, 4]) == 3 # true
```
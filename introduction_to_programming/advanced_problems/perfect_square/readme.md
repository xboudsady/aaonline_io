# Perfect Square

Write a method `perfect_square?` that takes in a number and returns a boolean indicating whether it is a perfect square. A perfect square is a number that results from multiplying a number by itself. For example, 9 is a perfect square because 3 * 3 = 9, 25 is a perfect square because 5 * 5 = 25.

## Setup

```ruby
def perfect_square?(num)


end

puts perfect_square?(5)   #=> false
puts perfect_square?(12)  #=> false
puts perfect_square?(30)  #=> false
puts perfect_square?(9)   #=> true
puts perfect_square?(25)  #=> true
```

## Solution

```ruby
def perfect_square?(num)
  # create a range of number want to iterate through
  (1..num).each do |factor|
    # check if factor times itself equal to num
    if factor * factor == num
      return true
    end
  end

  return false
end
```
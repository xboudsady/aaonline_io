# Even Nums

Write a method `even_nums(max)` that takes in a number `max` and returns an array containing all even numbers from **0** to **max**

## Setup

```ruby
def even_nums(max)

end

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]
```

## Solution

```ruby
def even_nums(max)
  # create an array to collect even numbers to be returned
  even_nums = []

  # loop up to our max to collect even numbers
  i = 0
  while i <= max
    # add that number to our array if even number is found
    if i % 2 == 0
      even_nums << i
    end

    i += 1
  end
  
  # return that array of even numbers
  return even_nums
end
```
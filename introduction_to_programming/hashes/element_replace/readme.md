# Element Replace

Write a method `element_replace` that takes in an array and a hash. The method should return a new array where elements of the original array are replaced with their corresponding values in the hash.

## Setup

```ruby
def element_replace(arr, hash)

end

arr1 = ["LeBron James", "Lionel Messi", "Serena Williams"]
hash1 = {"Serena Williams"=>"tennis", "LeBron James"=>"basketball"}
print element_replace(arr1, hash1) # => ["basketball", "Lionel Messi", "tennis"]
puts

arr2 = ["dog", "cat", "mouse"]
hash2 = {"dog"=>"bork", "cat"=>"meow", "duck"=>"quack"}
print element_replace(arr2, hash2) # => ["bork", "meow", "mouse"]
puts
```

## Solution

```ruby
def element_replace(arr, hash)
  # create an array to be returned
  new_array = []

  arr.each do | ele |
    # check if current element is key from hash
    if hash.has_key?(ele)
      # shovel into array if found
      new_array << hash[ele]
    else
      # if no match, return original key to array
      new_array << ele
    end

  end

  return new_array
end
```
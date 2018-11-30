# Element Count

Write a method `element_count` that takes in an array and returns a hash representing the count of each element in the array.

## Setup

```ruby
def element_count(arr)

end

puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}
```

## Solution

```ruby
def element_count(arr)
    # Create a new hash with a default value
    count = Hashn.new(0)

    # loop through array 
    arr.each do |ele|
        # add ele as array key, and increment each time same key is found
        count[ele] += 1
    end

    # return our hash
    return arr
end
```
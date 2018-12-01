# Unique Elements

Write a method `unique_elements` that takes in an array and returns a new array where all duplicate elements are removed. Solve this using a hash.

* Hint: all keys of a hash are automatically unique

## Setup

```ruby
def unique_elements(arr)

end

print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts
```

## Solution

```ruby
def unique_elements(arr)
    # create a hash table
    hash = {}

    # loop through the elements in the input array
    arr.each do | ele |
        # create a hash key base on our element
        hash[ele] = true
    end

    # use the hash.keys method to return keys as an array
    return hash.keys

end
```
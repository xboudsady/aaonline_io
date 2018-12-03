# May By Key

Write a method `map_by_key` that takes in an array of hashes and a key string. The method should returns a new array containing the values from each hash for the given key.

## Setup

```ruby
def map_by_key(arr, key)
    
end

locations = [
  {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
  {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
  {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts
```
## Solution

```ruby
def map_by_key(arr, key)
    # use map to iterate to return a new array
    return arr.map do |hash|
        # map to the key value for new array
        hash[key]
    end

end
```

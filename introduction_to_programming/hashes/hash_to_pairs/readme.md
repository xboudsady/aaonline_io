# Hash to Pairs

Write a method `hash_to_pairs` that takes in a hash and returns a 2D array representing each key-value pair of the hash.

## Setup

```ruby
def hash_to_pairs(hash)

end


print hash_to_pairs({"name"=>"skateboard", "wheels"=>4, "weight"=>"7.5 lbs"}) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
puts


print hash_to_pairs({"kingdom"=>"animalia", "genus"=>"canis", "breed"=>"German Shepherd"}) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
puts
```

## Solution

```ruby
def hash_to_pairs(hash)
    # create an array to be returned
    arr = []

    # loop through our hash key and value
    hash.each do |key, value|
        # shovel key, value as an array to our array
        arr << [key, value]
    end


    return arr
end
```
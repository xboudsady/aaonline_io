# Map By Name

Write a method `map_by_name`  that takes in an array of hashes and returns a new array containing the names of each hash.

## Setup

```ruby
def map_by_name(arr)

end


pets = [
  {"type"=>"dog", "name"=>"Rolo"},
  {"type"=>"cat", "name"=>"Sunny"},
  {"type"=>"rat", "name"=>"Saki"},
  {"type"=>"dog", "name"=>"Finn"},
  {"type"=>"cat", "name"=>"Buffy"}
]
print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
puts

countries = [
 {"name"=>"Japan", "continent"=>"Asia"},
 {"name"=>"Hungary", "continent"=>"Europe"},
 {"name"=>"Kenya", "continent"=>"Africa"},
]
print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
puts
```

## Solution

```ruby
def map_by_name(arr)
    # use map method because we want to return an array
    return arr.map do |hash|
        # create an array with name as the key
        hash["name"]
    end
end
```
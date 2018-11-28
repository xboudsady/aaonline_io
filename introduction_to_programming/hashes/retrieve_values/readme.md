# Retrieve Values

Write a method `retrieve_values` that takes in two hashes and a key. The method should return an array containing the values from the two hashes that correspond with the given key.

## Setup

```ruby
def retrieve_values(hash1, hash2, key)

end


dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts
```

## Solution

```ruby
def retrieve_values(hash1, hash2, key)
    # store hash value according to the key argument
    val1 = hash1[key]
    val2 = hash2[key]

    # return the value into an array
    return [val1, val2]
end
```
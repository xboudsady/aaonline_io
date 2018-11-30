# Select Upcase Keys

Write a method `select_upcase_keys` that takes in a hash and returns a new hash containing key-value pairs of the original hash that had uppercase keys. You can assume that the keys will always be strings.

## Setup

```ruby
def select_upcase_keys(hash)

end

print select_upcase_keys({"make"=> "Tesla", "MODEL"=> "S", "Year"=> 2018, "SEATS"=> 4}) # => {"MODEL"=>"S", "SEATS"=>4}
puts

print select_upcase_keys({"DATE"=>"July 4th","holiday"=> "Independence Day", "type"=>"Federal"}) # => {"DATE"=>"July 4th"}
puts
```

## Solution

```ruby
def select_upcase(hash)
    # create new hash to be returned
    new_hash = {}

    # loop through the hash
    hash.each do |key, val|
        # find keys whose values are upcase
        if key == key.upcase
            # assign that key, value to our new hash
            new_hash[key] = val
        end
    end

    # return our hash
    return new_hash
end
```
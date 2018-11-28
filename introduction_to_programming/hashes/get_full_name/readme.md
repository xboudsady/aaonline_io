# Get Full Name

Write a method `get_full_name` that takes in a hash containing a first, last, and title. The method should return a string representing the hash's full name

## Setup

```ruby
def get_full_name(hash)

end

hash1 = {"first"=>"Michael", "last"=>"Jordan", "title"=> "GOAT"}
puts get_full_name(hash1) # => "Michael Jordan, the GOAT"

hash2 = {"first"=>"Fido", "last"=>"McDog", "title"=> "Loyal"}
puts get_full_name(hash2) # => "Fido McDog, the Loyal"
```

## Solution

```ruby
def get_full_name(hash)
  # get values from hash
  first_name = hash["first"]
  last_name = hash["last"]
  title = hash["title"]

  # return a string
  return first_name + " " + last_name + ", the " + title

end
```
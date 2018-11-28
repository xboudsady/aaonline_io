# Get Double Age

Write a method `get_double_age` that takes in a hash and returns twice the "age" value of the hash.

## Setup

```ruby
def get_double_age(hash)

end

puts get_double_age({"name"=>"App Academy", "age"=>5}) # => 10
puts get_double_age({"name"=>"Ruby", "age"=>23})       # => 46
```

## Solution

```ruby
def get_double_age(hash)
  # specify the hash key, and multiple it since data type is a number
  return hash["age"] * 2
end
```
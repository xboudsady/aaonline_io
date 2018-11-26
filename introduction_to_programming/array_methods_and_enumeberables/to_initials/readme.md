# To Initials

Write a method `to_initials` that takes in a person's name string and returns a string representing their initials.

## Setup

```ruby
def to_initials(name)

end

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"
```

## Solution

```ruby
def to_initials(name)
  # Split the string into an array seperated at the space
  arr = name.split(" ")
  
  # create a variable to be returned
  initials = ""

  # Use the each method to loop through array
  arr.each do |str|
    # concat first index of each array
    initials += str[0]
  end

  # return array
  return initials

end
```
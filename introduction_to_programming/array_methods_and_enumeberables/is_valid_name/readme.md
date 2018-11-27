# Is Valid Name

Write a method `is_valid_name` that takes in a string and returns a boolean indicating whether or not it is a valid name.

* A name is valid is if satisfies all of the following:
* contains at least a first name and last name, separated by spaces
* each part of the name should be capitalized
* Hint: use str.upcase or str.downcase
* "a".upcase # => "A"

## Setup

```ruby
def is_valid_name(str)

end

puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false
```

## Solution

```ruby
def is_valid_name(str)
  # split our string into an array
  parts = str.split(" ")

  # check if there is two parts (first name, last name)
  if parts.length < 2
    return false
  end

  # check if every part of the name is capitalized
  # since its string data, we can check characters of the string
  parts.each do |part|
    # call our helper function to test if its NOT capitalize
    if !is_capitalize?(part)
      return false
    end
  end

  # return true if all conditions has passed
  return true
end

# helper function to check for capitalization
def is_capitalize?(word)
  # check if first word is character is upcase
  # check if rest of word is lower case, compare itself with a downcase version
  if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase  
    return true
  else
    return false
  end

end
```
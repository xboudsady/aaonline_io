# Nearby AZ

Write a method that takes a string in and returns true if the letter "z" appears within three letters after an "a". You may assume that the string contains only lowercase letters.

## The Setup

```ruby
def nearby_az(string)

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #nearby_az")
puts("===============================================")
    puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
    puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
    puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
    puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
    puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
    puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)
puts("===============================================")
```

## The Solution

```ruby
def nearby_az(string)
  # Store first index value
  idx1 = 0
  
  # Looping through the string length
  while idx1 < string.length
    # Increment first index by 1 if there is no 'a' character found
    if string[idx1] != "a"
      idx1 += 1
      # Return the value of idx1, and continut on to next code block
      next
    end

    # Create a second index value, with the previous index value + 1
    idx2 = idx1 + 1

    # First condition is our loop cycle condition
    # Second condition checks idx2 is within 3 places of idx1
    while (idx2 < string.length) && (idx2 <= idx1 + 3)
      # Check if there is a character of 'z'
      if string[idx2] == "z"
        # End code if a matching character is found
        return true
      end

      # Increment the loop
      idx2 += 1
    end

    # Increment the first loop
    idx1 += 1
  end

  # Return 'false' if the letter 'a' isn't found
  return false
end

# nearby_az('baz') # true
# nearby_az('abz') # true
# nearby_az('abcz') # true
# nearby_az('a') # false
# nearby_az('z') # false
nearby_az('za') # false
```
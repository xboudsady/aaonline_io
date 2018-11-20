# Scrambled String

Write a method that takes in a string and an array of indices in the string. Produce a new string, which contains letters from the input string in the order specified by the indices of the array of indices.

# Setup

```ruby
def scramble_string(string, positions)
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #scramble_string")
puts("===============================================")
    puts(
      'scramble_string("abcd", [3, 1, 2, 0]) == "dbca": ' +
      (scramble_string("abcd", [3, 1, 2, 0]) == "dbca").to_s
    )
    puts(
      'scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm"): ' +
      (scramble_string("markov", [5, 3, 1, 4, 2, 0]) == "vkaorm").to_s
    )
puts("===============================================")
```

# Solution

```ruby
def scramble_string(string, positions)
  # create an empty string to be return
  scrambled = ""

  # loop through our string array 
  i = 0
  while i < string.length
    # Concat our empty variable with the position in the array
    scrambled += string[positions[i]]
  
  # Increment our loop
  i += 1
  end

  # Return our newly form string
  return scrambled
end


puts scramble_string("abcd", [3, 1, 2, 0]) # "dbca"
puts scramble_string("markov", [5, 3, 1, 4, 2, 0]) # "vkaorm"
```
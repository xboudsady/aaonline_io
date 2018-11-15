# Count Vowels

Write a method that takes a string and returns the number of vowels
in the string. You may assume that all the letters are lower cased.
You can treat "y" as a consonant.

## The Setup

```ruby
def count_vowels(string)
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #count_vowels")
puts("===============================================")
    puts('count_vowels("abcd") == 1: ' + (count_vowels('abcd') == 1).to_s)
    puts('count_vowels("color") == 2: ' + (count_vowels('color') == 2).to_s)
    puts('count_vowels("colour") == 3: ' + (count_vowels('colour') == 3).to_s)
    puts('count_vowels("cecilia") == 4: ' + (count_vowels('cecilia') == 4).to_s)
puts("===============================================")
```

## The Solution

```ruby
def count_vowels(string)
  # Create a variable to hold our number of vowels 
  num_vowels = 0

  # Counter for our loop
  i = 0

  # Loop through of string lenght of character
  while i < string.length
    # Find the matching string character for vowels
    if (string[i] == "a" || string[i] == "e" || string[i] == "i" || string[i] == "o" || string[i] == "u")
      # For Each match through the loop, add 1 to our total count
      num_vowels += 1
    end

    # Increment our counter to end loop
    i += 1
  end

  return num_vowels

end

#count_vowels('abcd') # 1
count_vowels('cecilia') # 4
```
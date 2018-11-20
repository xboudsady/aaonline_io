# Capitalize Words

Write a method that takes in a string of lowercase letters and spaces, producing a new string that capitalizes the first letter of each word. 

# Setup

```ruby
def capitalize_words(string)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #capitalize_words")
puts("===============================================")
    puts(
      'capitalize_words("this is a sentence") == "This Is A Sentence": ' +
      (capitalize_words("this is a sentence") == "This Is A Sentence").to_s
    )
    puts(
      'capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
      (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s
    )
puts("===============================================")

```

## Solution

```ruby
def capitalize_words(string)
  # Creat an array to store our words, split at the spaces
  words = string.split(' ')

  # Loop through our array
  i = 0
  while i < words.length # 0 < 4
    # Create a variable to store  word, each cycle in our loop with have its own 'letter' variable that will upcase the first index

    letters = words[i]  # word = words[0] = this

    # Take the first index of the string word, and upcase
    letters[0] = letters[0].upcase # word[0] = T

    # increment our counter
    i += 1
  end

  # The modified array will get return, with a join on space
  return words.join(' ')
end

puts capitalize_words('this is a sentence') # This Is A Sentence
puts capitalize_words('mike bloomfield') # Mike Bloomfield
```
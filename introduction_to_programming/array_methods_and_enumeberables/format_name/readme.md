# Format Name

Write a method `format_name` that takes in a name string and returns the name properly capitalized.

* Hint: use str.upcase and str.downcase
* "abc".upcase # => "ABC"

## Setup

```ruby
def format_name(str)

end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
```

## Solution 1

```ruby
def format_name(str)
  # split the string into an array of words and set it to downcase
  arr = str.downcase.split(" ")

  # new array for words
  results = []
  
  # loop through our array
  arr.each do |word|
    # call our helper function to return first letter capitalize
    results << capitalize_first(word)
  end

  # return array as join
  return results.join(" ")
end


# Help function to capitalize first character of a words

def capitalize_first(word)
  # create an array to hold our string
  new_word = ""

  # loop through each character in word
  word.each_char.with_index do |char, i|
    # make first index upcase
    if i == 0
      # concat to new_word empty string
      new_word += char.upcase
      # step over to next line, exclude index[0]
      next
    end
    # concat remaining char
    new_word += char
  end
  
  return new_word
end

# puts capitalize_first("chase")

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
```

## Solution 2

```ruby
def format_name(str)
  # split the str to an array
  parts = str.split(" ")

  new_parts = []
  
  # loop through each word
  # take the first index of word, and use upcase() method.
  # Use + slice() method with a range to add the rest of the characters -1 to include last index
  # downcase the remaining character index
  parts.each do |part|
    new_parts << part[0].upcase + part[1..-1].downcase
  end

  # return array join at the space
  return new_parts.join(" ")

end
```
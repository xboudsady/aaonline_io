# Anagrams

Write a method `anagrams?` that takes in two words and returns a boolean indicating whether or not the words are anagrams. Anagrams are words that contain the same characters but not necessarily in the same order. Solve this without using .sort

## Setup

```ruby
def anagrams?(word1, word2)

end

puts anagrams?("cat", "act")          #=> true
puts anagrams?("restful", "fluster")  #=> true
puts anagrams?("cat", "dog")          #=> false
puts anagrams?("boot", "bootcamp")    #=> false
```

## Solution

```ruby
# Main function
def anagrams?(word1, word2)
    # compare the two hash table with our helper function
    return char_count(word1) == char_count(word2)
end


# Create a helper function to create a hash table

def char_count(word)
    # create a new hash with default value
    count = Hash.new(0)

    word.each_char do |char|
        # create a hash table with 'char' as the key, and how many time each char is found as the value
        count[char] += 1
    end

    return count
end
```
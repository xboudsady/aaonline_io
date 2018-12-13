# Consonant Cancel

Write a method `consonant_cancel` that takes in a sentence and returns a new sentence where every word begins with it's first vowel.

## Setup

```ruby
def consonant_cancel(sentence)

end

puts consonant_cancel("down the rabbit hole") #=> "own e abbit ole"
puts consonant_cancel("writing code is challenging") #=> "iting ode is allenging"
```

## Solution

```ruby
# Main Function

def consonant_cancel(sentence)
    # split our sentence into an array
    words = sentence.split(" ")

    # use map on our newly created array
    new_word = words.map do |word|
        # call our function to remove consonants
        remove_starting_consonants(word)
    end

    return new_word.join(" ")
end


# Helper function to remove starting consonant

def remove_starting_consonants(word)
    # create a strong to hold our vowels character
    vowels = "aeiou"

    # looking for first vowels in our words, with an index position
    word.each_char.with_index do |char, i|
        # check if character is a vowel
        if vowels.include?(char)
            # use slice to start at our first vowels to our last characters
            return word[i..-1]
        end
    end
end
```
# Hand Score

Write a method `hand_score` that takes in a string representing a hand of cards and returns it's total score. You can assume the letters in the string are only A, K, Q, J. A is worth 4 points, K is 3 points, Q is 2 points, and J is 1 point. The letters of the input string not necessarily uppercase.

## Setup

```ruby
def hand_score(hand)
	
end

puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9
```

## Solution

```ruby
def hand_score(hand)
    # create a hash to store our key, value
    cards = {
        "A" => 4,
        "K" => 3,
        "Q" => 2,
        "J" => 1
    }

    # create a variable to store our points
    points = 0

    # loop through, the string and use upcase() to take in lowercase
    hand.upcase.each_char do |char|
        # look for matching characters store in our hash
        if cards[char]
            # if found, increment to points base on hash value
            points += cards[char]
        end
    end

    # return our points
    return points
end
```
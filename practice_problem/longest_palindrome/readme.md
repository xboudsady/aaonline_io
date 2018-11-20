# Longest Palindrome

Write a method that takes in a string of lowercase letters (no uppercase letters, no repeats). Consider the substrings of the string: consecutive sequences of letters contained inside the string. Find the longest such string of letters that is a palindrome. Note that the entire string may itself be a palindrome. You may want to use Array's `slice(start_index, length)` method, which returns a substring of length `length` starting at `index start_index`:

## Setup

```ruby
def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    i += 1
  end

  return true
end

def longest_palindrome(string)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #longest_palindrome")
puts("===============================================")
    puts(
      'longest_palindrome("abcbd") == "bcb": ' +
      (longest_palindrome('abcbd') == 'bcb').to_s
    )
    puts(
      'longest_palindrome("abba") == "abba": ' +
      (longest_palindrome('abba') == 'abba').to_s
    )
    puts(
      'longest_palindrome("abcbdeffe") == "effe": ' +
      (longest_palindrome('abcbdeffe') == 'effe').to_s
    )
puts("===============================================")
```

## Solution

```ruby
# 1.  Write a method to check if string is a palindrome

# 2.  Build a list of potential substring by slicing them out at different indcies and lengths

# e.g. 

# indices: 0 1 2 3 4 5 6 7 8
# string: a b c b d e f f e => e f f e

# idx = 0: a, ab, abc, abcb, abcbe, abcbdef, abcbdeff, abcbdeffe
# idx = 1: b, bc, bcb, bcbd, bcbde, bcbdef, bcbdeff, bcbdeffe
# idx = 2: c, cb, cbd, cbdef, cbdeff, cbdeffe
# idx = 3: b, bd, bdef, bdeff, cbdeffe
# idx = 4: d, de, def, deff, bdeffe
# idx = 5: e, ef, eff, effe
# idx = 6: f, ff, ffe
# idx = 7: f, fe
# idx = 8: e

# 3.  Use previous 'palindrome?' method to check if each substring is a palindrome.

# 4.  If it is a palindrome, compare its length to the previous palindrome and if it's greater, replace it as the longest palindrome.

def longest_palindrome(string)
  # Create a variable to store our results to be returned
  best_palindrome = nil

  # Loop through our string
  i = 0
  while i < string.length   # to go through each letter in the string
    # create local variable
    length = 1              # assign first length to 1

    # Create second loop
    while (i + length) <= string.length   # to slice out out the substring   0 + 1 <= 5
      # local variable
      substring = string.slice(i, length)  # to define the substring   string.slice(0, 1) => ab

      if palindrome?(substring) && (best_palindrome == nil || substring.length > best_palindrome.length)
        best_palindrome = substring
      end
      # substring becomes new best_palindrome if it meets 2 requirements:
        # 1. it is a palindrome
        # 2. it's (nil = to the first substring as best_palindrome) OR new substring is longer than current logest substring.

      length += 1   # increment length of substring at each starting index. (i.e. a, ab, abc, abcd, etc...)
    end

    i += 1    # then increment i to set each letter as startign index.  (i.e.  abcd, bcbd, cbd, etc...)
  end

  return best_palindrome
end

puts longest_palindrome('abcbd') # bcb
puts longest_palindrome('abba') # bcb
puts longest_palindrome('abcdeffe') # bcb
```
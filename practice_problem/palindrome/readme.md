# Palindrome

Write a method that takes a string and returns true if it is a palindrome. A palindrome is a string that is the same whether written backward or forward. Assume that there are no spaces; only lowercase letters will be given.

## The Setup

```ruby
ef palindrome?(string)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #palindrome?")
puts("===============================================")
    puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
    puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
    puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)
puts("===============================================")
```

## The Solution

```ruby
def palindrome?(string)
  # Create our counter for the loop
  i = 0

  # Loop through length of the string
  while i < string.length
    
    # Check condition, if index value is NOT EQUAL then return false (Not a palindrome)
    if string[i] != string[(string.length - 1) - i]
      return false
    end

    # Increment the loop counter
    i += 1
  end

  # Return true if while loop condition does not return 'false'
  return true

end

palindrome?('abc') # false
palindrome?('abcba') # true
palindrome?('z') # true
```
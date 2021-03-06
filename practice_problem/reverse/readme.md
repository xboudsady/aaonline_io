# Reverse

Write a method that will take a string as input and return a new string with the same letters in reverse order.

## The Setup

```ruby
def reverse(string)
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts("\nTests for #reverse")
puts("===============================================")
    puts(
      'reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s
    )
    puts(
      'reverse("a") == "a": ' + (reverse("a") == "a").to_s
    )
    puts(
      'reverse("") == "": ' + (reverse("") == "").to_s
    )
puts("===============================================")

```

## Using the While Loop and String Concatnation method

```ruby
def reverse(string)
    # Create an empty String
    reversed_string = ''
    
    # Create counter
    i = 0
   
    # Loop through the lenght of the string, and build out the new reversed string
    while i < string.length
      reversed_string = string[i] + reversed_string
      # Incremnent by 1 to end loop
      i += 1
    end
  
    # Return our new string
    return reversed_string
  end
  
  reverse("hello") # --> "olleh"
```

### Using the 'each' enumerator

```ruby
def reverse(string)
    # Split the string character into an array
    string = string.split('')
    
    # Create an variable with an empty array
    reverse_string = []
    
    # Use the 'each' method 
    string.each do |char|
        # Take each character of our string array above, and add it to beginnin of our new array
        reverse_string.unshift(char)
    end

    # Return our new array and join the character together from the array
    return reversed_string.join('')
end

reverse("hello") # --> "olleh"
```
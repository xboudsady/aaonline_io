# Write a method that will take a string as input, and return a new string with the same letters in reverse order.

# Using Ruby’s ‘each’ enumerator

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
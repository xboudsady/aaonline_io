# Write a method that will take a string as input, and return a new string with the same letters in reverse order.


# Using the While Loop and String Concatnation method

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
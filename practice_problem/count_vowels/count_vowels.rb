def count_vowels(string)
    # Create a variable to hold our number of vowels 
    num_vowels = 0
  
    # Counter for our loop
    i = 0
  
    # Loop through of string lenght of character
    while i < string.length
      # Find the matching string character for vowels
      if (string[i] == "a" || string[i] == "e" || string[i] == "i" || string[i] == "o" || string[i] == "u")
        # For Each match through the loop, add 1 to our total count
        num_vowels += 1
      end
  
      # Increment our counter to end loop
      i += 1
    end
  
    return num_vowels
  
  end
  
  #count_vowels('abcd') # 1
  count_vowels('cecilia') # 4
def count_vowels(string)
    num_vowels = 0
  
    i = 0
  
    while i < string.length
      if (string[i] == "a" || string[i] == "e" || string[i] == "i" || string[i] == "o" || string[i] == "u")
        num_vowels += 1
      end
  
      i += 1
    end
  
    return num_vowels
  
  end
  
  #count_vowels('abcd') # 1
  count_vowels('cecilia') # 4
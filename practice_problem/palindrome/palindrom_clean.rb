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
  
  palindrome?('abc') # false
  palindrome?('abcba') # true
  palindrome?('z') # true
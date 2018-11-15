def longest_word(sentence)
    array = sentence.split(' ')
  
    longest = array[0]

    i = 1
  
    while i < array.length
        
      if longest.length < array[i].length
        longest = array[i]
      end
  
      i += 1
    end
  
    return longest;
  end
  
  longest_word('abc def abcde')
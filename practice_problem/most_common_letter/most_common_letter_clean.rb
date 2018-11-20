# Most Common Letter

# Write a method that takes in a string. Your method should return the most common letter in the array, and a count of how many times it appears.

def most_common_letter(string)
    most_common_letter = nil
    most_common_letter_count = nil
  
    index1 = 0
    while index1 < string.length
      letter = string[index1] 
      count = 0   
  
      index2 = 0
      while index2 < string.length 
        if string[index2] == letter 
          count += 1 
        end
        index2 += 1
      end

      if (most_common_letter_count == nil) || (count > most_common_letter_count)
        most_common_letter = letter
        most_common_letter_count = count
      end

      index1 += 1
    end
  
    return [most_common_letter, most_common_letter_count]
  end
  
  print most_common_letter('abca') # ["a", 2]
  print most_common_letter('abbab') # ["b", 3]
  
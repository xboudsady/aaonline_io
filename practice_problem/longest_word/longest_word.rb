def longest_word(sentence)
    # Split the sentence at he space
    array = sentence.split(' ')
  
    # Create a variable to store our virst value in from our new array
    longest = array[0]
  
    # Create a counter, starting at 1, since our longest variable has index 0
    i = 1
  
    # Loop through our array length
    while i < array.length
      # Compare our longest variable length
      if longest.length < array[i].length
        # if it's less than our current index, re-assign to our new index
        longest = array[i]
      end
  
      # Increment by 1 to move on to next index, to close out the loop
      i += 1
    end
  
    # Return or final value
    return longest;
  end
  
  longest_word('abc def abcde')
# Two Sum

# Write a method that takes an array of numbers. If a pair of numbers in the array sums to zero, return the positions of those two numbers. 
# If no pair of numbers sums to zero, return nil.

def two_sum(nums)
    # Loop counter, and first index value
    idx1 = 0
  
    # Loop through our array being passed in the parameter
    while idx1 < nums.length
      # Create a second variable to be compared against
      idx2 = idx1 + 1
  
      # Loop through to compare if idx1 + idx2 == 0
      while idx2 < nums.length
        if nums[idx1] + nums[idx2] == 0
          # If there is a match, return an array with those value
          return [idx1, idx2]
        end
  
        # 2nd Loop increment
        idx2 += 1
      end
  
      # 1st Loop increment
      idx1 += 1
    end
  
    # Return 'nil' if no pair number in array sum == 0
    return nil
  end
  
  puts two_sum([1, 3, 5, -3]) == [1, 3] # true
  puts two_sum([1, 3, 5]) == nil # nil
# Two Sum

# Write a method that takes an array of numbers. If a pair of numbers in the array sums to zero, return the positions of those two numbers. 
# If no pair of numbers sums to zero, return nil.

def two_sum(nums)
    idx1 = 0
  
    while idx1 < nums.length
      idx2 = idx1 + 1
  
      while idx2 < nums.length
        if nums[idx1] + nums[idx2] == 0
          return [idx1, idx2]
        end
  
        idx2 += 1
      end
  
      idx1 += 1
    end
  
    return nil
  end
  
  puts two_sum([1, 3, 5, -3]) == [1, 3] # true
  puts two_sum([1, 3, 5]) == nil # nil
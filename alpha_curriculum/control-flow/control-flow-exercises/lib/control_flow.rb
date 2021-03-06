# EASY

# Return the argument with all its lowercase characters removed.
def destructive_uppercase(str)
    str.each_char do |char|
        if char == char.downcase
            str.delete!(char)
        end
    end

    return str
end

# Return the middle character of a string. Return the middle two characters if
# the word is of even length, e.g. middle_substring("middle") => "dd",
# middle_substring("mid") => "i"
def middle_substring(str)
    mid = str.length / 2
    if str.length.odd?
        return str[mid]
    end

    return str[mid-1..mid]
end

# Return the number of vowels in a string.
VOWELS = %w(a e i o u)
def num_vowels(str)
    vowel_count = 0
    str.each_char do |char|
        if VOWELS.include?(char.downcase)
            vowel_count += 1
        end
    end

    return vowel_count
end

# Return the factoral of the argument (num). A number's factorial is the product
# of all whole numbers between 1 and the number itself. Assume the argument will
# be > 0.
def factorial(num)
    if num < 0
        return nil
    end

    result = 1

    while num > 0
        result = result * num
        num -= 1
    end

    return result
end


# MEDIUM

# Write your own version of the join method. separator = "" ensures that the
# default seperator is an empty string.
def my_join(arr, separator = "")
    join = ""
    
    arr.each_index do |i|
        join += arr[i]
        unless i == arr.length - 1
            join += separator
        end
    end

    return join
end

# Write a method that converts its argument to weirdcase, where every odd
# character is lowercase and every even is uppercase, e.g.
# weirdcase("weirdcase") => "wEiRdCaSe"
def weirdcase(str)
    weirdo = ""
    chars = str.chars
    
    chars.each_index do |i|
        if i.odd?
            weirdo += chars[i].upcase
        else
            weirdo += chars[i].downcase
        end
    end

    return weirdo
end

# Reverse all words of five more more letters in a string. Return the resulting
# string, e.g., reverse_five("Looks like my luck has reversed") => "skooL like
# my luck has desrever")
def reverse_five(str)
    result_array = []

    str.split.each do |word|
        if word.length > 4
            word = word.reverse
        end
        result_array << word
    end

    return result_array.join(" ")
end

# Return an array of integers from 1 to n (inclusive), except for each multiple
# of 3 replace the integer with "fizz", for each multiple of 5 replace the
# integer with "buzz", and for each multiple of both 3 and 5, replace the
# integer with "fizzbuzz".
def fizzbuzz(n)
    results = []
    (1..n).each do |i|
        if i % 3 == 0 && i % 5 == 0
            results << "fizzbuzz"
        elsif i % 5 == 0
            results << "buzz"
        elsif i % 3 == 0
            results << "fizz"
        else
            results << i
        end
    end
    return results
end


# HARD

# Write a method that returns a new array containing all the elements of the
# original array in reverse order.
def my_reverse(arr)
    reversed = []
    arr.each do |el|
        reversed.unshift(el)
    end
    return reversed
end

# Write a method that returns a boolean indicating whether the argument is
# prime.
def prime?(num)
    if num == 1
        return false
    end

    (2..num/2).each do |i|
        if num % i == 0
            return false
        end
    end

    return true
end

# Write a method that returns a sorted array of the factors of its argument.
def factors(num)
    results = []

    (1..num).each do |i|
        if num % i == 0
            results << i
        end
    end

    return results
end

# Write a method that returns a sorted array of the prime factors of its argument.
def prime_factors(num)
    results = []

    factors(num).each do |i|
        if prime?(i)
            results << i
        end
    end
    
    return results
end

# Write a method that returns the number of prime factors of its argument.
def num_prime_factors(num)
    return prime_factors(num).length
end


# EXPERT

# Return the one integer in an array that is even or odd while the rest are of
# opposite parity, e.g. oddball([1,2,3]) => 2, oddball([2,4,5,6] => 5)
def oddball(arr)
    evens = []
    odds = []

    arr.each do |i|
        if i.even?
            evens << i
        else
            odds << i
        end
    end

    if evens.length > 1
        return odds[0]
    end

    return evens[0]
end

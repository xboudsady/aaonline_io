# Practice Problem

## Table of Content

### [Reverse](reverse/readme.md)

Write a method that will take a string as input and return a new string with the same letters in reverse order.

### [Factorial](factorial/readme.md)
Write a method that takes an integer `n` in; it should return n*(n-1)(n-2)...*2*1. 
Assume `n >= 0`. 
As a special case, `factorial(0) == 1`.

### [Longest Word](longest_word/readme.md)
Write a method that takes in a string. Return the longest word in the string. You may assume that the string contains only letters and spaces. You may use the String `split` method to aid you in your quest.

### [Sum Nums](sum_nums/readme.md)
Write a method that takes in an integer `num` and returns the sum of all integers between zero and num, up to and including `num`.

### [Time Conversion](time_conversion/readme.md)
Write a method that will take in a number of minutes, and returns a string that formats the number into `hours:minutes`.

### [Count Vowels](count_vowels/readme.md)
Write a method that takes a string and returns the number of vowels
in the string. You may assume that all the letters are lower cased.
You can treat "y" as a consonant.

### [Palindrome](palindrome/readme.md)
Write a method that takes a string and returns true if it is a palindrome. A palindrome is a string that is the same whether written backward or forward. Assume that there are no spaces; only lowercase letters will be given.

### [Nearby AZ](nearby_az/readme.md)
Write a method that takes a string in and returns true if the letter "z" appears within three letters after an "a". You may assume that the string contains only lowercase letters.

### [Two Sum](two_sum/readme.md)
Write a method that takes an array of numbers. If a pair of numbers in the array sums to zero, return the positions of those two numbers. If no pair of numbers sums to zero, return `nil`.

### [Is Power of 2](is_power_of_2/readme.md)
Write a method that takes in a number and returns `true` if it is a power of 2. Otherwise, return `false`.

### [Third Greatest](third_greatest/readme.md)
Write a method that takes an array of numbers in. Your method should return the third greatest number in the array. You may assume that the array has at least three numbers in it.

### [Most Common Letter](most_common_letter/readme.md)
Write a method that takes in a string. Your method should return the most common letter in the array, and a count of how many times it appears.

### [Dasherize](dasherize_number/readme.md)
Write a method that takes in a number and returns a string, placing a single dash before and after each odd digit. There is one exception: don't start or end the string with a dash.

### [Capitalize Words](capitalize_words/readme.md)
Write a method that takes in a string of lowercase letters and spaces, producing a new string that capitalizes the first letter of each word. 

### [Scrambled String](scrambled_string/readme.md)
Write a method that takes in a string and an array of indices in the string. Produce a new string, which contains letters from the input string in the order specified by the indices of the array of indices.

### [Ruby Is Prime](ruby_is_prime/readme.md)
Write a method that takes in an integer (greater than one) and returns true if it is prime; otherwise return false. You may want to use the `%` modulo operation. 
`5 % 2` returns the remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`. More generally, if `m` and `n` are integers, `m % n == 0` if and only if `n` divides `m` evenly. You would not be expected to already know about modulo for the challenge.

### [Nth Prime](nth_prime/readme.md)
Write a method that returns the `n`th prime number. Recall that only numbers greater than 1 can be prime.

### [Longest Palindrome](longest_palindrome/readme.md)
Write a method that takes in a string of lowercase letters (no uppercase letters, no repeats). Consider the substrings of the string: consecutive sequences of letters contained inside the string. Find the longest such string of letters that is a palindrome. Note that the entire string may itself be a palindrome. You may want to use Array's `slice(start_index, length)` method, which returns a substring of length `length` starting at `index start_index`:

### [Greatest Common Factor](greatest_common_factor/readme.md)
Write a method that takes in two numbers. Return the greatest integer that evenly divides both numbers. You may wish to use the `%` modulo operation.

### [Caesar Cipher](caesar_cipher/readme.md)
Write a method that takes in an integer `offset` and a string. Produce a new string, where each letter is shifted by `offset`. You may assume that the string contains only lowercase letters and spaces.

### [Number of Repeated Letters](number_of_repeated_letters/readme.md)
Write a method that takes in a string and returns the number of letters that appear more than once in the string. You may assume the string contains only lowercase letters. Count the number of letters that repeat, not the number of times they repeat in the string.

## **[Coding Practice Challenge](coding_practice_challenge/readme.md)**

### [lucky_sevens?](coding_practice_challenge/readme.md)
Write a function `lucky_sevens?(numbers)`, which takes in an array of integers and returns true if any three consecutive elements sum to 7.

### [odd_ball_sum](coding_practice_challenge/readme.md)
Write a function `oddball_sum(numbers)`, which takes in an array of integers and returns the sum of all the odd elements.

### [disemvowel](coding_practice_challenge/readme.md)
Write a function `disemvowel(string)`, which takes in a string, and returns that string will all the vowels removed. Treat "y" as a consonant.
# Array Methods & Enumerables

## **Array Manipulation Methods Lecture**

* `<<` adds an element to the end of an array, evaluates to the the array

* `array.push` adds an element(s) to the end of the array, evaluates to the array
* `array.pop` removes the last element of an array, evaluates to the element that was removed

* `array.unshift` add element to the front of an array, evaluates to the array
* `array.shift` removes the first element of an array, evaluates to the element that was removed

```ruby
arr = ["vanessa", "candace", "dave"]

print arr                               # => ["vanessa", "candace", "dave"]
puts
arr << "jia"
print arr                               # => ["vanessa", "candace", "dave", "jia"]
puts
```

Using the `array.push` method will take multiple arguments and push them to the array.

```ruby
arr = ["vanessa", "candace", "dave"]

print arr                               # => ["vanessa", "candace", "dave"]
puts
arr.push("jia", "kurstie", "alvin")
print arr                               # => ["vanessa", "candace", "dave", "jia", "kurstie", "alvin"]
puts
```

Using the `array.pop` method takes the last value of the array as a value.

```ruby
arr = ["vanessa", "candace", "dave"]

print arr.pop()                         # => dave
puts
print arr                               # => ["vanessa", "candace"]
puts
```

```ruby
arr = ["vanessa", "candace", "dave"]

print arr.pop()                         # => dave
puts
print arr.pop()                         # => candace
puts
print arr                               # => ["vanessa"]
puts
```

Using the `array.unshift` method. Does not return a value, but append existing array.

```ruby
arr = ["vanessa", "candace", "dave"]

print arr.unshift("jia")                # => ["jia", "vanessa", "candace", "dave"]
puts
print arr                               # => ["jia", "vanessa", "candace", "dave"]
puts
```

Using the `array.shift` method. Removes first value of array, and returns it.

```ruby
arr = ["vanessa", "candace", "dave"]

print arr.shift                         # => vanessa
puts
print arr                               # => ["candace", "dave"]
puts
```

---

## **Index & Include Methods Lecture**

* `array/string.index(ele)` - evalutes to the index where **ele** is found
* `array/string.include?(ele)` - evalutes to the boolean indicating if **ele** is found

```ruby
arr = ["SF", "NY", "LA"]

puts arr.index("LA")      # => 2
puts arr.index("NY")      # => 1
puts arr.index("NJ")      # => 
```
Using the `include` method to find element in the array.

```ruby
arr = ["SF", "NY", "LA"]

puts arr.include?("NJ")      # => false
puts arr.include?("SF")      # => true


str = "hello"

puts str.index("ello")       # => 1
puts str.index("elloz")      # => 

puts str.include?("e")       # => true
puts str.include?("E")       # => false
puts str.include?("ello")    # => true
```

---

## **Reverse Method Lecture**

* `array/string.reverse`, evaluates to a new reverse version of the array or string
* `array/string.reverse!`, reverses an array/string in place

```ruby
arr = [1, 2,3, 5]

print arr           # => [1, 2, 3, 4]

arr.reverse         
print arr           # => [1, 2, 3, 4]

print arr.reverse   # => [4, 3, 2, 1]
```

```ruby
arr = [1, 2, 3, 4]

print arr           # => [1, 2, 3, 4]

arr.reverse!
print arr           # => [4, 3, 2, 1]
```

```ruby
str = "hello"

puts str.reverse    # => olleh
```

```ruby
def is_palindrome(word)
    return word == word.reverse
end

puts is_palindrome("madam")     # => true
puts is_palindrome("hello")     # => false
```

## **Range Slicing Lecture**

* `array[startIdx...endIdx]` - grabs elements from startIdx to endIdx (inclusive)
* `array[startIdx...endIdx]` - grabs elements from startIdx to endIdx (excluding the element at endIdx)

```ruby
arr = ["a", "b", "c", "d", "e"]

print arr[1]                     # => b
print arr[1..3]                  # => ["b", "c", "d"]
print arr[1...3]                 # => ["b", "c"]
```

```ruby
str = "bootcamp"

print str[1...3]            # => oo
print str[3..-1]            # => tcamp
print str[3..-2]            # => tcam
print str[-2]               # => m

```

## Split & Join Lecture

* `string.split` evaluates to an array
* `array.join` evaluates to a string

```ruby
str = "follow the yellow brick road"

prints str.split(" ")       # => ["follow", "the", "yellow", "brick", "road"]
prints str.split("y")       # => ["follow the ", "ellow brick road"]
prints str.split("the")     # => ["follow ", " yellow brick road"]

puts str                    # => follow the yellow brick road

words = str.split(" ")
puts words[2]               # => yellow
```

```ruby
arr = ["hello", "world", "how", "are", "you"]

puts arr.join(" ")           # hellow wolrd how are you
puts arr.join("_")           # hellow_wolrd_how_are_you
puts arr.join("HI")          # hellowHIwolrdHIhowHIareHIyou
```

```ruby
str = "follow the yellow brick road"

chars = str.split("")

print chars         # => ["f", "o", "l", "l", "o", "w", " ", "t", "h", "e", " ", "y", "e", "l", "l", "o", "w", " ", "b", "r", "i", "c", "k", " ", "r", "o", "a", "d"]
```

```ruby
str = "follow the yello brick road"

print str.split("l")                # => ["fo", "", "ow the ye", "", "ow brick road"]
print str.split("l").join("Z")      # => foZZow the yeZZow brick road
print str.split("o").join("x")      # => fxllxw the yelloxw brick rxad
```

### ***Array Enumberable Methods***

```ruby
people = ["Candace", "Jon", "Jose"]

# iterate over elements of an array using each
people.each { |person| puts person }
# Candace
# Jon
# Jose

# iterate over elements of an array with index using each_with_index
people.each_with_index do |person, i|
    puts person
    puts i
    puts "-----"
end # prints
# Candace 
# 0
# -----
# Jon
# 1
# -----
# Jose
# 2
# -----
```

### ***String Enumberable methods***

```ruby
greeting = "hello"

# iterate over characters of a string using each_char
greeting.each_char { |char| puts char } # prints
# h
# e
# l
# l
# o

# iterate over characters of a string with index using each_char.with_index
greeting.each_char.with_index do |char, i|
    puts char
    puts i
    puts "---"
end # prints
# h
# 0
# ---
# e
# 1
# ---
# l
# 2
# ---
# l
# 3
# ---
# o
# 4
# ---
```

### **Other**

```ruby
# repeate a block using times
3.times do
    puts "hi"
end # prints
# hi
# hi
# hi

# specify a range of numbers using (start..end) or (start...end)

# including end
(2..6).each { |n| puts n } # prints
# 2
# 3
# 4
# 5
# 6

# excluding end
(2...6).each { |n| puts n } # prints
# 2
# 3
# 4
# 5
```

## **Enumberables Lecture 1**

* `array.each`
* `array.each_with_index`
* 
* `string.each_char`
* `string.each_char.with_index`

Using the `while` loop

```ruby
months = ["Jan", "Feb", "Mar", "Apr"]

i = 0
while i < months.length
    month = months[i]
    puts month
    
    i += 1
end
# "Jan"
# "Feb"
# "Mar"
# "Apr"
```

Using the `each` enumerable method

```ruby
months = ["Jan", "Feb", "Mar", "Apr"]

months.each { |month| puts month }
# "Jan"
# "Feb"
# "Mar"
# "Apr"

months.each do |month|
    puts month
    puts "----"
end
# "Jan"
# ----
# "Feb"
# ----
# "Mar"
# ----
# "Apr"
# ----

months.each_with_index do |month, i|
    puts month
    puts i
    puts "----"
end
# "Jan"
# 0
# ---
# "Feb"
# 1
# ----
# "Mar"
# 2
# ----
# "Apr
# 3
# ----
```



```ruby
sentence = "hello world"

sentence.each_char do |char|
    puts char
end
# h
# e
# l
# l
# o
# 
# w
# o
# r
# l
# d

sentence.each_char.with_index do |char, i|
    puts char
    puts i
    puts "----"
end
# h
# 0
# ----
# e
# 1
# ----
# l
# 2
# ----
# l
# 3
# ----
# o
# 4
# ----
# 
# 5
# ----
# w
# 6
# ----
# o
# 7
# ----
# r
# 8
# ----
# l
# 9
# ----
# d
# 10
# ----
```

## **Enumerables Lecture 2**

* Range Enumberable
* `(start..end).each`, iterate from start to end (inclusive)
* `(start...end).each`, iterate from start to end (excluding end)

```ruby
arr = [1, 2, 3, 4, 5]

arr.each { |ele| puts ele }
# 1
# 2
# 3
# 4
# 5

(1..10).each { |num| puts num }
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9 
# 10

(5..10).each { |num| puts num }
# 5
# 6
# 7
# 8
# 9
# 10

(5...10).each { |num| puts num }
# 5
# 6
# 7
# 8
# 9
```

Write a method `fizzBuzz` that takes a number `max` and returns an array containing all numbers less than the max that are divisible by 3 or 5, but not both

```ruby
def fizzBuzz(max)
  arr = []

  (1...max).each do |num|
    if (num % 3 == 0 || num % 5 == 0) && !(num % 3 == 0 && num % 5 == 0)
      arr << num
    end
  end

  return arr
end

fizzBuzz(20) # => [3, 5, 6, 9, 10, 12, 18]

```

## **Enumerables Lecture 3**

```ruby
(0...4).each { |num| puts num }
# 0
# 1
# 2
# 3

(0...4).each { puts "hello" }
# hello
# hello
# hello
# hello

4.times { puts "hi" }
# hi
# hi
# hi
# hi
```

## **Nested Loops**

```ruby
(1..3).each do |num1|
    puts num1

    (1..5).each do |num2|
        puts "     " + num2.to_s    # need to make to string in order to concat
    end

end
# 1
#      1
#      2
#      3
#      4
#      5
# 2
#      1
#      2
#      3
#      4
#      5
# 3
#      1
#      2
#      3
#      4
#      5
```

```ruby
(1..3).each do |num1|
    (1..5).each do |num2|
        puts num1.to_s + " " + num2.to_s 
    end
end
# 11
# 12
# 13
# 14
# 15
# 21
# 22
# 23
# 24
# 25
# 31
# 32
# 33
# 34
# 35
```

## Nested Loops Lecture 2

```ruby
arr = ["a", "b", "c", "d"]

# below we iterate through all possible w/ duplicateds
arr.each do |ele1|
    arr.each do | ele2|
        puts ele1 + ele2
    end
end
# aa
# ab
# ac
# ad
# ba
# bb
# bc
# bd
# ca
# cb
# cc
# cd
# da
# db
# dc
# dd

arr = ["a", "b", "c", "d"]

# below we iterate through only unique pairs
arr.each_with_index do |ele1, idx1|                         # a, 0
    arr.each_with_index do | ele2, idx2|                    # a, 0
        # only prints if index 2 is greater than index 1
        if idx2 > idx1                                      # 0 > 0  false...
            puts ele1 + ele2
            puts idx1.to_s + " " + idx2.to_s
            puts "-----"
        end
    end
end
# ab
# 0 1
# -----
# ac
# 0 2
# -----
# ad
# 0 3
# -----
# bc
# 1 2
# -----
# bd
# 1 3
# -----
# cd
# 2 3
# -----

# if idx2 is greater than idx1, then idx2 is never referring to what idx1 referred to previously
```

## 2 Dimensional Arrays Lecture

```ruby
arr = [
    ["a", "b", "c"], 
    ["d", "e"], 
    ["f", "g", "h"]
    ]

print arr           # => [["a", "b", "c"], ["d", "e"], ["f", "g", "h"]]

print arr.length    # => 3

print arr[0]        # => ["a", "b", "c"]

subArr = arr[1]

print subarr        # => ["d", "e"]
print subarr[1]     # => e

print arr[1][0]     # => d
print arr[2][1]     # => g


arr.each do |subArr|
    print subArr
end
# ["a", "b", "c"]
# ["d", "e"]
# ["f", "g", "h"]


arr.each do |subArr|
    print subArr
    puts
    subArr.each do |ele|
        puts ele
    end
    puts
end
# ["a", "b", "c"]
# a
# b
# c
# ["d", "e"]
# d
# e
# ["f", "g", "h"]
# f
# g
# h

```
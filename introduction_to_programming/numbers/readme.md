# Numbers

## Number Lecture 1
Ruby can perform basic arithmetic operations with numbers
```ruby
puts 1 + 1      # => 2
puts -5 + 3     # => -2
puts 2.5 + 0.5  # => 3.0

puts 10 - 8     # => 2
puts 5 * 5      # => 25
puts 5 / 2      # => 2  (it's really 2.5)
```

How ruby handles division and decimal numbers.

```ruby
puts 9 / 2      # => 4   (ruby ignores the decimal) should be 4.5
puts 9 / 2.0    # => 4.5 (will need to make 1 value a decimal)
```

Order of operations in Ruby.

```ruby
puts 6 + 4 / 2      # => 8      The division will have precedence, 4 / 2 = 2 then, 6 + 2 = 8
puts (6  + 4) / 2   # => 5      The parenthesis is evaulated first (6 + 4) = 10 then, 10 / 2 = 5
```

Modulo gives us the remainder of the division, represented by the `%` symbol

```ruby
puts 13 % 5    # => 3       13 / 5 = 2 remainder 3
puts 14 % 5    # => 4
puts 15 % 5    # => 0       perfect divisable, no remainder
```

## Number Lecture 2
Comparison Operators
* equal `==`
* not equal to `!=`
* greater than `>`
* less than `<`
* greater than or equal to `>=`
* less than or equal to `<=`

Does not return a value, only returns `true` or `false`

```ruby
puts 5 == 5         # => true
puts 3 == 5         # => false

puts 3 != 5         # => true

puts 25 > 20        # => true
puts 7 < 11         # => true

puts 100 >= 100     # => true
puts 200 >= 200     # => true
```

## Number Exercise 1

Write 4 examples of expressions using each of the operations: `+`, `-`, `/`, and `%`. Print out the result of your expressions using `puts`. Be sure to test your work by running your code!

```ruby
# Example:
puts 4 + 2.5   # 6.5

# Write 4 more expressions below:
puts 1 + 1      # 2
puts 2 - 1      # 1
puts 4 / 2      # 2
puts 3 % 2      # 1
```

## Number Exercise 2

Write 6 comparison expressions using each of the operations: `==`, `!=`, `<`, `>`, `<=`, `>=`. Print out the result of your expressions using puts. Be sure to test your work by running your code!

```ruby
# Example:
puts 4 == 4       # true

# Write 6 more expressions below:
puts 4 != 5       # true
puts 4 < 5        # false
puts 4 > 5        # true
puts 4 >= 5       # false
puts 4 <= 4       # true
```

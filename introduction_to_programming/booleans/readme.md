# Booleans

Booleans Data TYpe Lecture

Operations
* `!` (not)
* `&&` (and)
* `||` (or)

```ruby
puts true       # => true
puts !true      # => false
puts !false     # => true
```
Using the `&&` operator.

```ruby
puts false && false     # => false
puts false && true      # => false
puts true && false      # => false
puts true && true       # => true
```

Using the `|| operator

```ruby
puts false || false     # => false
puts false || true      # => true
puts true || false      # => true
puts true || true       # => true
```

# Boolean Quiz
Select the best answer from the multiple choice options. Once you’ve answered all questions, click the submit button and you’ll receive your score.

What will `true && false` evaluate to?
* true
* **false**

What will `!false || false` evaluate to?
* false
* **true**

What will `13 % 2 == 0` evaluate to?
* **false**
* true
* 1
* 0

What will `6 > 0 && 6 % 2 == 0` evaluate to?
* 0
* false
* **true**


# Boolean Exercise

Write 4 examples or expressions using each of the operations: `&&`, `||`, `!`. Print out the result of your expressions using `puts`. Be sure to test your work by running your code!

```ruby
# Example:
puts false || false   # false

# Write 4 more expressions below:
puts 3 > 3 || 3 >= 3        # => true
puts 5 % 4 == 0 && !true    # => false
puts !false && !false       # => true
puts !false || false        # => true
```
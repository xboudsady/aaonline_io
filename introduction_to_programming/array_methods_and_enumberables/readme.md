# Array Methods & Enumerables

## Array Manipulation Methods Lecture

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
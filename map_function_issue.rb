# Description:

# In computer science, a programming language is said to have first-class functions if it treats
# functions as first-class citizens. Specifically, this means the language supports passing functions
# as arguments to other functions, returning them as the values from other functions, and assigning them
# to variables or storing them in data structures.
# First-class functions are a necessity for the functional programming style, in which the use of
# higher-order functions is a standard practice. A simple example of a higher-ordered function is
# the map function, which takes, as its arguments, a function and a list, and returns the list formed by
# applying the function to each member of the list. For a language to support map, it must support passing
# a function as an argument. See more on https://en.wikipedia.org/wiki/First-class_function

# Your task is to rewrite your own map() function with some quirk and error message which takes an
# array and a function as an argument and returns another array of trues and falses. If a number
# in the array is even it returns 'true' and if number is odd it returns 'false'.

# Once you build your function which is the argument for map function you need to store it in variable called 'func'.
# For example the result would be like below once map function is called:
# map([1,2,3,4],func); // calling the map function
# [ false, true, false, true ] // returned result

# Second argument of map function must be function, so it should be validated and give string 'given argument is not a function' in case the argument is not a function. If array contains not numbers it returns string 'array should contain only numbers'. So make sure all elements of the array are numbers.

def map(array, func)
  array.each do |n|
    n = 0
    @mapped_array = []
    if array[n].even?
      @mapped_array << true
    else
      @mapped_array << false
    end
    n+=1
    print @mapped_array
  end
end

map([2,5,7,89,6,0], func)
print @mapped_array.class

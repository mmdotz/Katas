def iter_map(array, f)
  new_array = []
  array.each do |elem|
    new_array << f.(elem)
  end
  print new_array
end

iter_map([1,2,3,4,5], ->(elem) {
  elem * elem
})

# [1,4,9,16,25]
# f is the function call on elem

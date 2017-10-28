# return an array sorted in ascending order
def sort_array_asc(array)
  array.sort do |a,b|
    a <=> b
  end
end

# return an array sorted in descending order
def sort_array_desc(array)
  array.sort do |a,b|
    b <=> a
  end
end

# return an array in ascending order sorted by the number of characters in the string
def sort_array_char_count(array)
  array.sort do |a, b|
    a.length <=> b.length
  end
end

# swap the second and third elements of an array
def swap_elements(array)
  array = array[0], array[2], array[1]
  return array
end

# reverse the order of an array of integers
def reverse_array(array)
  array.reverse
end

# change the 3rd character of each element to a dollar sign
def kesha_maker(array)
  array.each do |item|
    item[2] = "$" # (note: assign value)
  end
  return array
end

# find all words that begin with "a" in the following array
def find_a(array)
  array.select do |item|
    item[0] == "a" # (note: compare value)
  end
end

# sum all the numbers in the following array
  # https://stackoverflow.com/questions/1538789/how-to-sum-array-of-numbers-in-ruby
  # http://ruby-doc.org/core-2.4.2/Enumerable.html#method-i-inject
  # inject & reduce methods: Combine all elements by applying a binary operation
  # can also be written as: array.reduce(:+) or array.inject(0, :+)
def sum_array(array)
  array.inject { |sum, x| sum + x }
end

# Add an "s" to each word in the array except for the 2nd element in the array
  # each_with_index method: Call block with two arguments, the item and its index, for each item.
  # Given arguments (both the item and its index) are passed through to each().

  # https://apidock.com/ruby/Array/collect
  # collect method: Create a new array containing the values returned by the block
def add_s(array)
  array.each_with_index.collect do |item, index|
    index == 1 ? item : item + "s"
  end
end

def find_shortest_string(arr)
  output = []
  i = 0
  while output.size == 0
    output = arr.filter { |str| str.size == i }
    if output.size == 0
      i += 1
    end
  end
  output.first
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string(["aaa", "a", "bb", "ccc"])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string(["cat", "hi", "dog", "an"])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string(["flower", "juniper", "lily", "dadelion"])

  # Don't forget to add your own!

  # BENCHMARK HERE
end

# Please add your pseudocode to this file
# And a written explanation of your solution

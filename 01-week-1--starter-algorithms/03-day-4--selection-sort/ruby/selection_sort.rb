def selection_sort(arr)
  sorted = []
  arr.size.times do
    min = arr.min
    idx = arr.index min
    sorted << min
    arr.delete_at idx
  end
  sorted
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print "=> "
  print selection_sort([3, -1, 5, 2])

  puts

  long_input = []

  100.times { long_input << rand }

  start_time = Time.now

  1000.times do
    selection_sort([2, 1])
    selection_sort(long_input)
  end

  puts ((Time.now - start_time) / 2000)
end

# Please add your pseudocode to this file
# And a written explanation of your solution

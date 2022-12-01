require 'byebug'

def find_first_duplicate(arr)
  if arr.size > 1
    i = 0
    while i < arr.size
      if arr[i] == arr[i+1]
        return arr[i]
      else
        i = i + 1
      end
    end
  end
  -1
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 1, 3, 3, 2])

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1, 2, 3, 4])

  puts 'Expecting: 5'
  puts '=>', find_first_duplicate([5, 5, 4, 2, 1])

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution

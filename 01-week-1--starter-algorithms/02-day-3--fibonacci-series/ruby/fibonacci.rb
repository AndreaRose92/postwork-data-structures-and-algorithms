# Given a number (n), we're gonna calculate the nth value from the beginning of the Fibonacci Sequence, a logical order that adds that last two values to each other to produce the next value

def fibonacci(num)
  output = [0]
  if num >= 1
    output << 1
    i = 1
    while i < num
      output << (output[i - 1] + output[i])
      i += 1
    end
  end
  output.last
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 0"
  puts "=>", fibonacci(0)

  puts

  puts "Expecting: 1"
  puts "=>", fibonacci(2)

  puts

  puts "Expecting: 55"
  puts "=>", fibonacci(10)

  # Don't forget to add your own!
end

# def fibonacci(num)
#   output = [0]
#   if num >= 1
#     output << 1
#
#

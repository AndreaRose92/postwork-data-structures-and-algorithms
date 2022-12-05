function fibonacci(num) {
  let output = [0]
  if (num>=1) {
    output.push(1)
    for (i=1;i<num;i++) {
      output.push(parseInt(output[i-1]) + parseInt(output[i]))
    }
  }
  return output[output.length - 1]
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 0");
  console.log("=>", fibonacci(0));

  console.log("");

  console.log("Expecting: 1");
  console.log("=>", fibonacci(2));

  console.log("");

  console.log("Expecting: 55");
  console.log("=>", fibonacci(10));
}

module.exports = fibonacci;

// Please add your pseudocode to this file
// And a written explanation of your solution

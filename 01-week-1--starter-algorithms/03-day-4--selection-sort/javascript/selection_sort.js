function selectionSort(arr) {
  let sorted = []
  if (arr.length === 0) {
    return sorted
  }
  sorted.push(arr.shift())
  while (arr.length > 0) {
    let value = arr.shift()
    let idx = sorted.findIndex(element => element >= value)
    if (idx === -1) {
      sorted.push(value)
    } else {
      sorted.splice(idx, 0, value)
    }
  }
  return sorted
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: [-1, 2, 3, 5]");
  console.log("=>", selectionSort([3, -1, 5, 2]));

  console.log("");

  // BENCHMARK HERE, and print the average runtime
  const longInput = [];

  for (let i = 0; i < 100; ++i) {
    longInput.push(Math.random());
  }
}

module.exports = selectionSort;

// Please add your pseudocode to this file
// And a written explanation of your solution

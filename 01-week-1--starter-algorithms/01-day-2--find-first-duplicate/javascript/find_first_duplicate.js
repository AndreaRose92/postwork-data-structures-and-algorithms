function findFirstDuplicate(arr) {
  let output = -1
  if (arr.length > 1) {
    for (i=0;i<arr.length;i++) {
      arr[i] === arr[i+1] ? output = arr[i] : null
    }
  }
  return output
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 3");
  console.log("=>", findFirstDuplicate([2, 1, 3, 3, 2]));

  console.log("Expecting: -1");
  console.log("=>", findFirstDuplicate([1, 2, 3, 4]));
}

module.exports = findFirstDuplicate;

// Please add your pseudocode to this file
// And a written explanation of your solution

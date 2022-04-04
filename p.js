// Create a function that takes in an array of numbers and returns the sum of all the numbers cubed.

// a) Create a test with an expect statement using the variables provided.

const cubeAndSum1 = [2, 3, 4]
// Expected output: 99
const cubeAndSum2 = [0, 5, 10]
// Expected output: 1125

function cubeArray(array) {
    sum = 0
    array.map(a => {
        sum +=a**3
        return sum
    })
    return sum
}

console.log(cubeArray(cubeAndSum1));
console.log(cubeArray(cubeAndSum));
const counter = function () {
    let val = 0;

    return (function () { return val++; });
}

const count1 = counter();
const count2 = counter();

console.log(count1());
console.log(count2());
console.log(count1());

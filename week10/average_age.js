// let's note the power with cleaning some user data.
const users = [
    {
      name: 'Jeff',
      age: 52,
      gender: 'male'
    },
    {
      name: 'Andy',
      age: 25,
      gender: 'male'
    },
    {
      name: 'Sarah',
      age: 30,
      gender: 'female'
    },
    {
      name: 'Phoebe',
      age: 21,
      gender: 'female'
    },
    {
      name: 'Doris',
      age: 81,
      gender: 'female'
    }
];

// average age of all men starting with 'A'
let sum = 0;
let num = 0;

users.forEach(function(elem) {
    if (elem.gender === 'male' && elem.name.startsWith('A')) {
        sum += elem.age;
        num++;
    }
});

console.log("average is " + sum / num);

const isMale = (person) => person.gender === 'male';
const startsWithA = (person) => person.name.startsWith('A');
const getAge = (person) => person.age;
const add = (acc, elem) => acc + elem;

const men = users.filter(isMale);
const aMen = men.filter(startsWithA);
const ages = aMen.map(getAge);
const average = ages.reduce(add, 0)/ages.length;

console.log("average is " + average);

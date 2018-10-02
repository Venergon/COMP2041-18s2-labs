const cart = [
  {
    name: 'Apple',
    cost: 2.30
  },
  {
    name: 'Orange',
    cost: 4.50
  },
  {
    name: 'Apple',
    cost: 2.30
  },
  {
    name: 'Strawberry',
    cost: 6.70
  },
  {
    name: 'Orange',
    cost: 4.50
  }
];

const countCart = function(cart) {
    let count = {};

    for (const item of cart) {
        const name = item.name;
        const cost = item.cost;
        if (count[name] !== undefined) {
            count[name] += cost;
        } else {
            count[name] = cost;
        }
    }

    for (const item of Object.keys(count).sort()) {
        console.log(`${item} ${count[item]}`);
    }
}

countCart(cart);
// above would print
// Apple 2
// Orange 2
// Strawberry 1

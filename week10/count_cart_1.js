const cart = ['Apple', 'Orange', 'Apple', 'Strawberry', 'Orange'];

const countCart = function(cart) {
    let count = {};

    for (const item of cart) {
        if (count[item] !== undefined) {
            count[item]++;
        } else {
            count[item] = 1;
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

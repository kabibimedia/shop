/*....Chart react.....*/

// Function to handle adding an item to the cart
function addToCart(productName, productPrice, productImage) {
  event.preventDefault();

  var productElement = event.target.closest('.pro');
  var productName = productElement.querySelector('.des h5').textContent;
  var productPrice = productElement.querySelector('.card__price').textContent;
  var productImage = productElement.querySelector('img').src;
  

  // Remove the currency symbol (¢) and convert the price to a number
  productPrice = parseFloat(productPrice.replace('¢', ''));

    // Retrieve the existing cart items from local storage or create an empty array if none exists
  var cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];

  // Check if the item is already in the cart
  var existingItem = cartItems.find(function (item) {
    return item.name === productName;
  });

  if (existingItem) {
    // If the item is already in the cart, increase the quantity
    existingItem.quantity++;
    existingItem.subtotal = existingItem.price * existingItem.quantity; // Update the subtotal
  } else {
    // If the item is not in the cart, add it as a new item
    var item = {
      name: productName,
      price: productPrice,
      quantity: 1,
      image: productImage,
      subtotal: productPrice, // Set initial subtotal as the price
    };
    cartItems.push(item);
  }

  // Store the updated cart items back into local storage
  localStorage.setItem('cartItems', JSON.stringify(cartItems));

  // Update the cart count
  updateCartCount();
  // Display the cart items
  displayCartItems();
}

// Function to update the cart count
function updateCartCount() {
  var cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
  var cartCount = 0;

  // Calculate the total number of items in the cart
  for (var i = 0; i < cartItems.length; i++) {
    cartCount += cartItems[i].quantity;
  }

  // Update the cart count in the HTML
  document.getElementById('cart-count').textContent = cartCount;
}

// Function to display the cart items in the modal
function displayCartItems() {
  var cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
  var cartBody = document.getElementById('cart-body');
  var cartTotal = 0;

  // Clear the cart body before adding items
  cartBody.innerHTML = '';

  // Iterate over the cart items and create rows in the cart table
  for (var i = 0; i < cartItems.length; i++) {
    var item = cartItems[i];

    // Calculate the subtotal for the item
    var subtotal = item.price * item.quantity;
    cartTotal += subtotal;

    // Create a new row for the item
    var row = document.createElement('tr');
    row.innerHTML = `
      <td><img src="${item.image}" alt=""></td>
      <td>${item.name}</td>
      <td>${item.price}</td>
      <td>${item.quantity}</td>
      <td>${subtotal}</td>
      <td><ion-icon onclick="removeItem(${i})" name="close-circle-outline"></ion-icon></td> 
    `;

    // Add the row to the cart body
    cartBody.appendChild(row);
  }

  // Update the cart total
  document.getElementById('cart-total').textContent = cartTotal;
}

// Function to remove an item from the cart
function removeItem(index) {
  var cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];

  // Remove the item from the cart array
  cartItems.splice(index, 1);

  // Store the updated cart items back into local storage
  localStorage.setItem('cartItems', JSON.stringify(cartItems));

  // Update the cart count and display the cart items
  updateCartCount();
  displayCartItems();
}

// Function to clear the cart
function clearCart() {
  // Clear the cart items from local storage
  localStorage.removeItem('cartItems');

  // Update the cart count and display the cart items
  updateCartCount();
  displayCartItems();
}

// Attach the addToCart function to the click event of the "Add to Cart" buttons
var addToCartButtons = document.getElementsByClassName('cart');
for (var i = 0; i < addToCartButtons.length; i++) {
  addToCartButtons[i].addEventListener('click', function() {
    var productName = this.parentNode.getElementsByClassName('des')[0].getElementsByTagName('h5')[0].textContent;
    var productPrice = this.parentNode.getElementsByClassName('card__price')[0].textContent;
    addToCart(productName, productPrice);
  });
}

// Attach the clearCart function to the click event of the "Clear Cart" button
document.getElementById('clear-cart').addEventListener('click', clearCart);

// Update the initial cart count and display the cart items
updateCartCount();
displayCartItems();

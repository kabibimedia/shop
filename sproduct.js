
//single product
/*// Function to handle adding an item to the cart
function addToCart(event, productName, productPrice, productImage) {
  event.preventDefault();

  // Retrieve the necessary details of the selected product
  var productSize = document.querySelector('.single-pro-details select').value;
  var productQuantity = document.querySelector('.single-pro-details input').value;

  // Create an object to represent the item being added to the cart
  var item = {
    name: productName,
    price: productPrice,
    size: productSize,
    quantity: productQuantity,
    image: productImage
  };

  // Retrieve the existing cart items from local storage or create an empty array if none exists
  var cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];

  // Check if the item is already in the cart
  var existingItemIndex = cartItems.findIndex(function (item) {
    return item.name === productName && item.size === productSize;
  });

  if (existingItemIndex !== -1) {
    // If the item is already in the cart with the same size, increase the quantity
    cartItems[existingItemIndex].quantity = parseInt(cartItems[existingItemIndex].quantity) + parseInt(productQuantity);
  } else {
    // If the item is not in the cart, add it as a new item
    cartItems.push(item);
  }

  // Store the updated cart items back into local storage
  localStorage.setItem('cartItems', JSON.stringify(cartItems));

  // Update the cart count
  updateCartCount();

  // Provide a confirmation message to the user
  alert('Item added to cart successfully!');
}

// Function to update the cart count
function updateCartCount() {
  var cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
  var cartCount = 0;

  // Calculate the total number of items in the cart
  for (var i = 0; i < cartItems.length; i++) {
    cartCount += parseInt(cartItems[i].quantity);
  }

  // Update the cart count in the HTML
  document.getElementById('cart-count').textContent = cartCount;
}
*/

// Function to update the cart count
function updateCartCount() {
  var cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];
  var cartCount = 0;

  // Calculate the total number of items in the cart
  for (var i = 0; i < cartItems.length; i++) {
    cartCount += parseInt(cartItems[i].quantity);
  }

  // Update the cart count in the HTML
  document.getElementById('cart-count').textContent = cartCount;
}

// Function to add an item to the cart
function addToCart(productName, productPrice, productImage) {
  // Retrieve the necessary details of the selected product
  var productSize = document.querySelector('.single-pro-details select').value;
  var productQuantity = document.querySelector('.single-pro-details input').value;

  // Create an object to represent the item being added to the cart
  var item = {
    name: productName,
    price: productPrice,
    size: productSize,
    quantity: productQuantity,
    image: productImage
  };

  // Retrieve the existing cart items from local storage or create an empty array if none exists
  var cartItems = JSON.parse(localStorage.getItem('cartItems')) || [];

  // Check if the item is already in the cart
  var existingItemIndex = cartItems.findIndex(function (item) {
    return item.name === productName && item.size === productSize;
  });

  if (existingItemIndex !== -1) {
    // If the item is already in the cart with the same size, increase the quantity
    cartItems[existingItemIndex].quantity = parseInt(cartItems[existingItemIndex].quantity) + parseInt(productQuantity);
  } else {
    // If the item is not in the cart, add it as a new item
    cartItems.push(item);
  }

  // Store the updated cart items back into local storage
  localStorage.setItem('cartItems', JSON.stringify(cartItems));

  // Provide a confirmation message to the user
  alert('Item added to cart successfully!');
}

// Attach the addToCart function to the click event of the "Add to Cart" buttons
var addToCartButtons = document.getElementsByClassName('cart');
for (var i = 0; i < addToCartButtons.length; i++) {
  addToCartButtons[i].addEventListener('click', function(event) {
    var productName = this.parentNode.getElementsByClassName('des')[0].getElementsByTagName('h5')[0].textContent;
    var productPrice = this.parentNode.getElementsByClassName('card__price')[0].textContent;
    var productImage = this.parentNode.querySelector('img').src;
    addToCart(productName, productPrice, productImage);
    updateCartCount(); // Update the cart count immediately after adding an item
  });
}

// Update the initial cart count
updateCartCount();

/*proceed to checkout*/

// Get the necessary elements
var paymentMethodSelect = document.getElementById('payment-method');
var mobileMoneyDetails = document.getElementById('mobile-money-details');

// Event listener for payment method selection
paymentMethodSelect.addEventListener('change', function() {
  var selectedMethod = this.value;

  // Show/hide mobile money details based on the selected method
  if (selectedMethod === 'mobile-money') {
    mobileMoneyDetails.classList.remove('hidden');
  } else {
    mobileMoneyDetails.classList.add('hidden');
  }
});

// Event listener for form submission
document.getElementById('checkout-form').addEventListener('submit', function(event) {
  event.preventDefault();

  // Get form values
  var name = document.getElementById('name').value;
  var email = document.getElementById('email').value;
  var phone = document.getElementById('phone').value;
  var paymentMethod = document.getElementById('payment-method').value;
  var mobileMoneyProvider = document.getElementById('mobile-money-provider').value;

  // Perform further processing or submit the form data to the server
  // For demonstration purposes, we'll just log the form data
  console.log('Name:', name);
  console.log('Email:', email);
  console.log('Phone:', phone);
  console.log('Payment Method:', paymentMethod);
  console.log('Mobile Money Provider:', mobileMoneyProvider);

  // Display a confirmation message to the user
  alert('Order placed successfully!');
});
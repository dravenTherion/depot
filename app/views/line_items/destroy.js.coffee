cart = document.getElementById("cart")
cart.innerHTML = "<%= j render './carts/cart', {is_remote: true, cart: @cart} %>"

notice = document.getElementById("notice")

# if located in the orders page, remove checkout button
if window.location.pathname.indexOf('/orders/') != -1
    checkout = document.querySelector(".proceed_checkout")
    checkout.parentNode.removeChild(checkout);

if notice
    notice.style.display = "none"

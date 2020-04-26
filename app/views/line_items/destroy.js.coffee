cart = document.getElementById("cart")
cart.innerHTML = "<%= j render './carts/cart', {is_remote: true, cart: @cart} %>"

notice = document.getElementById("notice")

if notice
    notice.style.display = "none"

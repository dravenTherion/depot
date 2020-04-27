cart = document.getElementById("cart")
cart.innerHTML = "<%= j render @cart, is_remote: true %>"

notice = document.getElementById("notice")
info = document.querySelector(".info")

if notice
    notice.style.display = "none"

if info
    info.style.display = "none";

# if located in the orders page, remove checkout button
if window.location.pathname.indexOf('/orders/') != -1
    checkout = document.querySelector(".proceed_checkout")
    checkout.parentNode.removeChild(checkout);


cross = document.querySelector('.main_banner h1 sup');
cross.classList.add('rotate');

remove_spin = (c) -> cross.classList.remove('rotate');

setTimeout(remove_spin, 2000);
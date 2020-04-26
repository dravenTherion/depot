cart = document.getElementById("cart")
cart.innerHTML = "<%= j render @cart, is_remote: true %>"

notice = document.getElementById("notice")
info = document.querySelector(".info")

if notice
    notice.style.display = "none"

if info
    info.style.display = "none";
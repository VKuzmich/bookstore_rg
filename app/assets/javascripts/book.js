function readMore() {
    var dots = document.getElementById("dots");
    var moreText = document.getElementById("more");
    var btnText = document.getElementById("read-more");

    if (dots.style.display === "none") {
        dots.style.display = "inline";
        btnText.innerHTML = "Read more";
        moreText.style.display = "none";
    } else {
        dots.style.display = "none";
        btnText.innerHTML = "Read less";
        moreText.style.display = "inline";
    }
}

function plus(price) {
    var input = document.getElementById("quantity_input");

    input.value++
    calculationPrice(price, input.value)
}

function minus(price) {
    var input = document.getElementById("quantity_input");
    if (input.value > 1) {
        input.value--
    }
    calculationPrice(price, input.value)
}

function calculationPrice(price, input) {
    var price_element = document.getElementById("price");
    var currency = price_element.textContent.substring(0, 1);
    price_element.textContent = currency + (price * input).toFixed(2);
}
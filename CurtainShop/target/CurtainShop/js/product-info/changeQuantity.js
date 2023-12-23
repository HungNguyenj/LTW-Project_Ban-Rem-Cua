var quantityID = document.getElementById("product-quantities-id");
var quantityIndex = 1;

function changeQuantity(n) {
    quantityIndex += n;
    if (quantityIndex < 1) {
        quantityIndex = 1;
    }
    quantityID.value = quantityIndex;
}

changeQuantity(0);

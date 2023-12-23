var slideIndex =1;
showDivs(slideIndex);

function plusDivs(n) {
    showDivs(slideIndex +=n);
}

function showDivs(n){
    var i;
    var item = document.getElementsByClassName("product-img");
    if (n > item.length) {
        slideIndex = 1;
    }
    if (n < 1) {
        slideIndex = item.length;
    }

    for (i = 0; i < item.length;i++) {
        item[i].style.display = "none";
    }
    item[slideIndex - 1].style.display = "block";
}
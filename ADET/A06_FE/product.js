var categories = [];
var products = [];

const getAllCategories = async () => {
  fetch(
    'http://localhost/Md-Lei.github.io/ADET/A06_BE/categories.php'
  )
    .then(response => response.json())
    .then(data => {
      categories = data;
      loadCategories();
    });
}

const getAllProducts = async (categoryID) => {
  const categoryData = {
    categoryID: categoryID
  };

  fetch(
    'http://localhost/Md-Lei.github.io/ADET/A06_BE/products.php', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(categoryData)
  })
    .then(response => response.json())
    .then(data => {
      products = data;
      loadProducts();
    });
}

getAllCategories();

var total = 0;

function loadCategories() {
  var categoriesContainer = document.getElementById("categories");

  categories.forEach((category) => {
    categoriesContainer.innerHTML += `
      <div onclick="getAllProducts('` + category.categoryID + `')" class="card mx-1 customized-button p-3 text-center justify-content-center" style="background-color:` + category.color + `">
        <small>` + category.name + `</small>
      </div>
    `;
  });
}

function loadProducts(categoryID) {
  var maincontainer = document.getElementById("maincontainer");
  maincontainer.innerHTML = "";

  products.forEach(product => {
    maincontainer.innerHTML += `
    <div onclick="addToReceipt('` + product.price + `','` + product.code + product.sizeCode + `')" 
          class="card mx-1 my-2 custom-button content p-3 text-center" style="background-image: url('images/` + product.img + `'); background-size: cover;">
       <small>` + product.name + ' ' + product.sizeCode + `</small>
     </div>
   `;
  });
}

function addToReceipt(price, code) {
  var receiptContainer = document.getElementById("receipt");
  total = parseFloat(total) + parseFloat(price);

  totalValueElement = document.getElementById("totalValue");
  totalValueElement.innerHTML = total;

  receiptContainer.innerHTML += `
 <div class="d-flex flex-row justify-content-between">
        <div><small style = " font-family: 'Courier New', Courier, monospace;">`+ code + `</small></div>
        <div><small style = " font-family: 'Courier New', Courier, monospace;">`+ price + `</small></div>
    </div>
    `;
}
loadCategories();

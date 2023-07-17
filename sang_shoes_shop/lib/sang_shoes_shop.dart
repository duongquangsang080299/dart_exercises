import 'product_model.dart';

void main() {
  printProductList();
}
// 'SangShop' Class has a lit 'Product' object 'product'

List<Product> products = [];
// Constructor ' SangShop' that calls 'generateProducts()' method to populate the 'products' list.

// Method 'generateProducts() generates 50 sample products
// Each product is created using the provided model data samples.
//
void generateProducts() {
  for (int i = 1; i <= 50; i++) {
    //'for' loop that iterates from 'i'=1 to '50'.
    Product product = Product(
      // 'Product' object is created and assigned to the 'product' variable.
      "primary",
      724,
      "male",
      "23 May 2022",
      i, // is set to the current value of i, which represents the iteration index.
      "13 May 2022",
      "Product $i", // is set to "Product $i", where $i is replaced with the current value of i.
      i % 2 == 0
          ? "Shoes"
          : "Clothes", //store property is set to "Shoes" for even i values and "Clothes" for odd i values.
      i % 5 ==
          0, // is set based on the condition i % 5 == 0. It will be true if i is divisible by 5, and false otherwise.
      30,
    );
    products.add(
        product); // the 'product' object is added to the products list using the products.add(product) statement.
  }
}

// Method is responsible for printing the details of each product
void printProductList() {
  for (Product product in products) {
    //using 'for' loop that iterates over each 'Product'
    print("ID: ${product.id}"); // represents the ID of the product
    print("Name: ${product.name}"); // represent the name of the product
    print(
        "Store: ${product.store}"); // represent the store category of the product
    print("--------------------");
  }
}

//CRUD operations
Product newProduct = Product(
  "secondary",
  500,
  "unisex",
  "30 June 2023",
  51,
  "New Product",
  "Clothes",
  "Clothes",
  false,
  10,
);
  /*createProduct(newProduct)

  int updateProductId = 20;
  Product updatedProduct = Product(
     "primary",
     800,
     "male",
     "30 June 2023",
    20,
     "1 June 2023",
    "Update Product",
    "Shoes",
     true,
     20,
  );
  updateProduct(updatedProductId, updatedProduct)

  int deletedProductId = 30;
  deletedProduct(deletedProductId)*/


import 'dart:math';
import 'product_model.dart';

// Class represents shop and function
// Define variable name 'products' list of product.
class SangShop {
  List<Product> products = [];
// Class call method to populate the list
  SangShop() {
    generateProducts();
  }
// Method use 'Random' class to generate random values.
  void generateProducts() {
    Random random = Random();
    List<String> stores = ['Shoes', 'Clothes'];
    List<String> names = [
      'Product A',
      'Product B',
      'Product C',
      'Product D',
      'Product E'
    ];
    List<String> colors = ['primary', 'secondary', 'tertiary'];
    List<String> genders = ['male', 'female', 'unisex'];
// Create new 'Product' object with random property values for each iteration
// Then add it to the 'product' list
    for (int i = 1; i <= 50; i++) {
      Product product = Product(
        brandColor: colors[random.nextInt(colors.length)],
        balance: random.nextInt(1000),
        gender: genders[random.nextInt(genders.length)],
        dueDate: '23 May 2022',
        id: i,
        issuedDate: '13 May 2022',
        name: '${names[random.nextInt(names.length)]} $i',
        store: stores[random.nextInt(stores.length)],
        bestSeller: random.nextBool(),
        saleOff: random.nextInt(50),
      );
      products.add(product);
    }
  }

// Contains several other methods
// Print and prints the details of each product
  void printProductList() {
    for (Product product in products) {
      print('ID: ${product.id}');
      print('Name: ${product.name}');
      print('Store: ${product.store}');
      print('-------------------------');
    }
  }

// Search product based by ID
// Return found product or 'null' if not found
  Product? findProductById(int id) {
    for (Product product in products) {
      if (product.id == id) {
        return product;
      }
    }
    return null;
  }

  // List based on store name and print detail of product
  void filterProductsByStore(String store) {
    List<Product> filteredProducts =
        products.where((product) => product.store == store).toList();
    for (Product product in filteredProducts) {
      print('ID: ${product.id}');
      print('Name: ${product.name}');
      print('Store: ${product.store}');
      print('-------------------------');
    }
  }

  // Add new product
  void createProduct(Product product) {
    products.add(product);
    print('Product created successfully!');
  }

  // Update product based one provided ID with the given update product
  void updateProduct(int id, Product updatedProduct) {
    int index = products.indexWhere((product) => product.id == id);
    if (index != -1) {
      products[index] = updatedProduct;
      print('Product updated successfully!');
    } else {
      print('Product not found with ID: $id');
    }
  }

  // remove a product based one the provided ID
  void deleteProduct(int id) {
    products.removeWhere((product) => product.id == id);
    print('Product deleted successfully!');
  }
}

// Function is the entry point of the program
// Create class and its method call to perform various operations
void main() {
  SangShop sangShop = SangShop();

  // See list of 50 products
  sangShop.printProductList(); // Method call and display 50 product

  // Find product by ID
  int productId = 10;
  Product? foundProduct = sangShop.findProductById(productId);
  if (foundProduct != null) {
    print('Product found:');
    print('ID: ${foundProduct.id}');
    print('Name: ${foundProduct.name}');
    print('Store: ${foundProduct.store}');
  } else {
    print('Product not found with ID: $productId');
  }

  // Filter products by store
  String filterStore = 'Shoes';
  print('Filtered products by store "$filterStore":');
  sangShop.filterProductsByStore(filterStore);

  // CRUD operations
  // Add a new product to the list
  Product newProduct = Product(
    brandColor: 'secondary',
    balance: 500,
    gender: 'unisex',
    dueDate: '30 June 2023',
    id: 51,
    issuedDate: '1 June 2023',
    name: 'Product F',
    store: 'Clothes',
    bestSeller: false,
    saleOff: 10,
  );

  sangShop.createProduct(newProduct);
// Update existing product in the list
  int updatedProductId = 20;
  Product updatedProduct = Product(
    brandColor: 'primary',
    balance: 800,
    gender: 'male',
    dueDate: '30 June 2023',
    id: 20,
    issuedDate: '1 June 2023',
    name: 'Product X',
    store: 'Shoes',
    bestSeller: true,
    saleOff: 20,
  );
  sangShop.updateProduct(updatedProductId, updatedProduct);
  // Remove a product from the list
  int deletedProductId = 30;
  sangShop.deleteProduct(deletedProductId);
}

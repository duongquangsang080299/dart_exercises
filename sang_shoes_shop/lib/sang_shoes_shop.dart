import 'dart:convert';
import 'dart:math';
import 'product_model.dart';

// Class represents shop and function
// Define variable name 'products' list of product.
class SangShop {
  final List<Product> _products = [];
// Class call method to populate the list
  SangShop() {
    _generateProducts();
  }
// Method use 'Random' class to generate random values.
  Future<void> _generateProducts() async {
    final Random random = Random();
    // List of stores selling various products
    const List<String> stores = [
      'Shoes',
      'Clothes',
      'Denim',
      'Boots',
      'Glove',
      'Socks',
      'Cream',
      'Trousers',
      'Hawins',
      'Timberland',
      'Dr Martens',
      'Throgood',
      'Dockers',
      'Caterpillar',
      'Vans',
      'Nike',
      'Addidas',
      'Balenciaga',
      'Convers',
      'Rebook',
      'MLB',
      'Vans',
      'Puma',
      'Asics',
      'Supreme',
      'Valentino',
      'Alexander McQueen',
      'Christian Louboutin',
      'Fila',
      'Charles & Keith',
      'Y-3',
    ];

    // List of color
    const List<String> colors = [
      'primary',
      'secondary',
      'tertiary',
      'yeallow',
      'blue',
      'red',
      'brown',
      'Green',
      'Black',
      'White',
      'Gray',
      'Pink',
      'orange',
      'purple',
      'light blue',
      'dark blue',
      'aqua',
      'dark green',
      'lime green',
      'bubble gum',
      'deep pur'
    ];
    // List of genders
    const List<String> genders = [
      'male',
      'female',
      'unisex',
    ];
    // Create new 'Product' object with random property values for each iteration
    // Then add it to the 'product' list
    // Using 'for' loop iterates 50
    for (int i = 1; i <= 50; i++) {
      await Future.delayed(Duration(milliseconds: 50)); // Simulate async delay
      var product = Product(
        id: i,
        name: 'Product $i',
        store: stores[random
            .nextInt(stores.length)], // Randomly selected form the 'store' list
        brandColor: colors[random.nextInt(
            colors.length)], // Randomly selected form the 'colors' list
        balance: random.nextInt(1000), // Set random integer between 0 and 999
        gender: genders[random
            .nextInt(genders.length)], // Randomly selected from 'genders' list
        dueDate: '23 May 2022',
        issuedDate: '13 May 2022',
        bestSeller:
            true, // A boolean flag indicating if the product is a best-seller.
        saleOff: 30,
      );
      _products.add(
          product); // After creating other product random,it's add in product
    }
  }

  // Get a list of products (getter)
  List<Product> get products => _products;

  // Search product based by ID
  // 'Product?' it mean function can return 'Product' or Null if product 'id' not found in the list.
  Product? findProductById(int id) {
    try {
      return _products.firstWhere((product) => product.id == id);
    } catch (e) {
      return null;
    }
  }

  // Filter products by store
  List<Product> filterProductsByStore(String store) {
    return _products.where((product) => product.store == store).toList();
  }

  // Add new product
  void addProduct(Product product) {
    _products.add(product);
  }

  // Update product based one provided ID with the given update product
  void updateProduct(int id, Product updatedProduct) {
    int index = _products.indexWhere((product) => product.id == id);
    if (index != -1) {
      _products[index] = updatedProduct;
      print('Product updated successfully!');
    } else {
      print('Product not found with ID: $id');
    }
  }

  // Delete a product based one the provided ID
  void deleteProduct(int id) {
    _products.removeWhere((product) => product.id == id);
  }
}

// Function is the entry point of the program
// Create class and its method call to perform various operations
void main() async {
  final SangShop sangShop = SangShop();

  // Generate products asynchronously
  await sangShop._generateProducts();

  // See a list of products
  final List<Product> productList = sangShop.products;
  for (Product product in productList) {
    print(jsonEncode(product.toJson()));
  }
  // Find product by ID
  const productId = 40;
  final Product? foundProduct = sangShop.findProductById(productId);
  if (foundProduct != null) {
    print('Found product: ${jsonEncode(foundProduct.toJson())}');
  } else {
    print('Product not found with ID: $productId');
  }

  // Filter products by store
  const String store = 'Socks';
  final List<Product> filteredProducts = sangShop.filterProductsByStore(store);
  for (final Product product in filteredProducts) {
    print(jsonEncode(product.toJson()));
  }

  // Add a new product to the list
  final Product newProduct = Product(
    id: 51,
    name: 'New Product',
    store: 'Clothes',
    gender: 'female',
    brandColor: 'primary',
    balance: 800,
    issuedDate: '1 June 2023',
    dueDate: '30 June 2023',
    bestSeller: true,
    saleOff: 20,
  );

  sangShop.addProduct(newProduct);
  print('New product add: ${jsonEncode(newProduct.toJson())}');

  //Update a product
  const int updatedProductId = 20;
  Product updatedProduct = Product(
    id: 20,
    name: 'Updated Product',
    store: 'Shoes',
    gender: 'male',
    brandColor: 'secondary',
    balance: 900,
    issuedDate: '1 June 2023',
    dueDate: '30 June 2023',
    bestSeller: false,
    saleOff: 10,
  );
  sangShop.updateProduct(updatedProductId, updatedProduct);
  print('Product update: ${jsonEncode(updatedProduct.toJson())}');

  // Remove a product from the list
  const int deletedProductId = 12;
  sangShop.deleteProduct(deletedProductId);
  print('Product deleted with ID:$deletedProductId');
}

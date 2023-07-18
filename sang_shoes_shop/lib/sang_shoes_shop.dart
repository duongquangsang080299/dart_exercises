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
    final Random random = Random();
    // List of stores selling various products
    List<String> stores = [
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
    // List of product name
    List<String> names = [
      'Product A',
      'Product B',
      'Product C',
      'Product D',
      'Product E',
      'Product F',
      'Product G',
      'Product H',
      'Product I',
      'Product K',
      'Product L',
      'Product M',
      'Product N',
      'Product O',
      'Product P',
      'Product Q',
      'Product R',
      'Product S',
      'Product T',
      'Product U',
      'Product V',
      'Product X',
      'Product Y',
    ];
    // List of color
    List<String> colors = [
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
    List<String> genders = [
      'male',
      'female',
      'unisex',
    ];
    // Create new 'Product' object with random property values for each iteration
    // Then add it to the 'product' list
    // Using 'for' loop iterates 50
    for (int i = 1; i <= 50; i++) {
      final Product product = Product(
        brandColor: colors[random.nextInt(
            colors.length)], // Randomly selected form the 'colors' list
        balance: random.nextInt(1000), // Set random integer between 0 and 999
        gender: genders[random
            .nextInt(genders.length)], // Randomly selected from 'genders' list
        dueDate: '23 May 2022',
        id: i, // It is set to the loop index i, which ranges from 1 to 50.
        issuedDate: '13 May 2022',
        name:
            '${names[random.nextInt(names.length)]} $i', // Randomly selected name form the 'name' list with the current loop index 'i'
        store: stores[random
            .nextInt(stores.length)], // Randomly selected form the 'store' list
        bestSeller:
            true, // A boolean flag indicating if the product is a best-seller.
        saleOff: 30,
      );
      products.add(
          product); // After creating other product random,it's add in product
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
  // 'Product?' it mean function can return 'Product' or Null if product 'id' not found in the list.
  Product? findProductById(int id) {
    // Using function 'for in' loop and will execute for each item in the products list.
    for (Product product in products) {
      // find each solutioj
      // Check if 'id' current matches 'id' parameter
      if (product.id == id) {
        // This means the function will exit at this point, and no further iterations will occur.
        return product;
      }
    }
    //
    // If not fiding matching product function will return null
    return null;
  }

  // List based on store name and print detail of product.
  void filterProductsByStore(String store) {
    List<Product> filteredProducts = products
        // 'where' method available for lists in Dart and it returns the elements given condition
        // Checks store property of each Product object is equal  store parameter.
        .where((product) => product.store == store)
        // It used to convert the filtered iterable into a new list containing the filtered
        .toList();

    // 'filteredProduct' objects filtered by the specified store.
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
    // Searching product current
    // 'indexWhere ' it return the index of the first element give condition
    int index = products.indexWhere((p) =>
        p.id ==
        product
            .id); // Condition check'id' property of each product equal 'id' property of new product
    // It means that an existing product with the same ID as the new product is found in the products list, and it needs to be updated.
    if (index != -1) {
      // Products list (found at the index) is replaced with the new product.
      products[index] = product;
      print('Product create successfully!');
    } else {
      print('Product not found with ID: ${product.id}');
    }
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
  int productId = 40;
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
  String filterStore = 'Socks';
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
  int deletedProductId = 12;
  sangShop.deleteProduct(deletedProductId);
}

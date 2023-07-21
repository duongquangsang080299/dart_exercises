import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'product_model.dart';

// Class represents shop and function
// Define a private list of 'Product' objects using the 'final' keyword.
class SangShop {
  List<Product>? _products;

// Method to generate random products using the 'Random' class
// It is asynchronous because it uses ' Future' and 'await'
  Future<List<Product>> _generateProducts(
    List<String> stores,
    List<String> colors,
    List<String> genders,
  ) async {
    List<Product> generatedProducts = [];
    //Create an instance of the 'Random' class to generate random values
    final Random random = Random();

    // Loop create 50 random 'Product' object and add '_products' list
    for (int i = 1; i <= 50; i++) {
      // Create a new 'Product' object with random properties
      var product = Product(
        id: i,
        name: 'Product $i',
        // Randomly selected form the 'store' list
        store: stores[random.nextInt(stores.length)],
        // Randomly selected form the 'colors' list
        brandColor: colors[random.nextInt(colors.length)],
        // Set random integer between 0 and 999
        balance: random.nextInt(1000),
        // Randomly selected from 'genders' list
        gender: genders[random.nextInt(genders.length)],
        dueDate: '23 May 2022',
        issuedDate: '13 May 2022',
        // A boolean flag indicating if the product is a best-seller.
        bestSeller: true,
        saleOff: 30,
      );
      generatedProducts.add(product);
    }

    _products = generatedProducts;

    return _products!;
  }

  // Method to get the list of product (_products)
  List<Product> get products => _products ?? [];

  // Method to search for a product based on its ID.
  /* It returns a 'Product' object if found, 
  or null if the product with the specified ID is not in the list.*/
  Product? findProductById(int id) {
    try {
      /* Using 'firstWhere' method to find the first product 
       with the given ID in the '_product' list */
      return _products?.firstWhere((product) => product.id == id);
    } catch (e) {
      // print the exception to know the error
      print('Erorr in findProductById: $e');
      /* If no product is found with the given ID
      The 'firstWhere' method throws an exception.*/
      // We catch exception and return null to indicate  product is not found.
      return null;
    }
  }

  // Filter products by store
  List<Product> filterProductsByStore(String store) {
    return _products?.where((product) => product.store == store).toList() ?? [];
  }

  // Method to add a new product to the list of products
  void createProduct(Product product) {
    // Add the new product to the '_products' list
    _products?.add(product);

    /* Search index of product in the '_products' list
     that has the same ID as the new product.*/
    final index = _products?.indexWhere((p) => p.id == product.id);

    // If the product with the same ID is found,update it with the new product
    if (index != null && index != -1) {
      _products?[index] = product;
      print('Product created successfully!');
    } else {
      // If the create not succesfull,print a message indicating it
      print('Product create not successfull: ${product.id}');
    }
  }

  /* Method to update a product based 
  on the provided ID with the given updated product.*/
  void updateProduct(int id, Product updatedProduct) {
    /* Search for the index of the product in the 
    '_products' list that has the specified ID.*/
    final index = _products?.indexWhere((product) => product.id == id);
    // If the product with the specified ID is found,
    // Update it with the provided updated product.
    if (index != null && index != -1) {
      _products?[index] = updatedProduct;
      print('Product updated successfully!');
    } else {
      /* If the product with the specified ID is not update, 
       print a message indicating it.*/
      print('Product not update successful: $id');
    }
  }

  // Method delete a product based one the provided ID
  void deleteProduct(int id) {
    /* Remove the product from the '_products'
     list that has the specified ID using 'removeWhere'*/
    _products?.removeWhere((product) => product.id == id);
    // Print a message to indicate that the product was deleted successfully.
    print('Product deleted successfully!');
  }
}

// Function is the entry point of the program
// Create class and its method call to perform various operations
void main() async {
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

  // Create instance of the 'SangShop' class
  final sangShop = SangShop();
  // Generate products asynchronously
  await sangShop._generateProducts(stores, colors, genders);

  // See a list of products
  List<Product> productList = sangShop.products;
  for (Product product in productList) {
    await Future.delayed(Duration(milliseconds: 1000));
    // Print the Json representation of each product
    print(jsonEncode(product.toJson()));
  }
  // Find product by ID
  int productId = 55;
  Product? foundProduct = sangShop.findProductById(productId);
  if (foundProduct != null) {
    // If the product is found,print its details
    print('Product found:');
    print('ID: ${foundProduct.id}');
    print('Name: ${foundProduct.name}');
    print('Store: ${foundProduct.store}');
    print('Balance: ${foundProduct.balance}');
    print('gender: ${foundProduct.gender}');
  } else {
    // If the product is not found,print a message indicating it
    print('Product not found with ID: $productId');
  }

  // Filter products by store
  String filterStore = 'Socks';
  print('Filtered products by store "$filterStore":');
  List<Product> filteredProducts = sangShop.filterProductsByStore(filterStore);
  for (Product product in filteredProducts) {
    // Print the details of each product in the filtered list
    print('ID: ${product.id}');
    print('Name: ${product.name}');
    print('Store: ${product.store}');
    print('Balance: ${product.balance}');
    print('gender: ${product.gender}');
  }
  // Add a new product to the list
  final Product newProduct = Product(
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

  // Update an existing product in the list
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

  // Remove a product form the list
  int deletedProductId = 12;
  sangShop.deleteProduct(deletedProductId);
}

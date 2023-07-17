// Class represent a product with properties
// Each property is declared as final, meaning it cannot be changed after it is set.
class Product {
  final String brandColor;
  final int balance;
  final String gender;
  final String dueDate;
  final int id;
  final String issuedDate;
  final String name;
  final String store;
  final bool bestSeller;
  final int saleOff;
// Class has a constructor take values for properties as required parameter
  Product({
    required this.brandColor,
    required this.balance,
    required this.gender,
    required this.dueDate,
    required this.id,
    required this.issuedDate,
    required this.name,
    required this.store,
    required this.bestSeller,
    required this.saleOff,
  });
}

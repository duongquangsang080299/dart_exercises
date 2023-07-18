// Class represent a product with properties
// Each property is declared as final, meaning it cannot be changed after it is set.
class Product {
  final int id;
  final String? brandColor;
  final int? balance;
  final String gender;
  final String? dueDate;
  final String? issuedDate;
  final String name;
  final String store;
  final bool? bestSeller;
  final int? saleOff;
// Class has a constructor take values for properties as required parameter
  Product({
    required this.id,
    required this.gender,
    required this.name,
    required this.store,
    this.bestSeller,
    this.saleOff,
    this.brandColor,
    this.balance,
    this.dueDate,
    this.issuedDate,
  });
}
// Todo: Add formart from json/ to json 
// Have function copyWith
// Fixme (request and optional)

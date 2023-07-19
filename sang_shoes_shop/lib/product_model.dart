// Class represent a product with properties
// Each property is declared as final, meaning it cannot be changed after it is set.
class Product {
  final int id;
  final String brandColor;
  final String name;
  final String store;
  final String gender;
  final int? balance;
  final String? dueDate;
  final String? issuedDate;
  final bool? bestSeller;
  final int? saleOff;
// Class has a constructor take values for properties as required parameter
  Product({
    required this.id,
    required this.gender,
    required this.name,
    required this.store,
    required this.brandColor,
    this.bestSeller,
    this.saleOff,
    this.balance,
    this.dueDate,
    this.issuedDate,
  });

  // // Factory method to create a Product instance from Json
  // factory Product.fromJson(Map<String, dynamic> json) {
  //   return Product(
  //     id: json['id'],
  //     name: json['name'],
  //     store: json['store'],
  //     gender: json['gender'],
  //     brandColor: json['brandColor'],
  //     balance: json['balance'],
  //     issuedDate: json['issuedDate'],
  //     dueDate: json['dueDate'],
  //     bestSeller: json['bestSeller'],
  //     saleOff: json['saleOff'].toDouble(),
  //   );
  // }
  // Convert Product instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'store': store,
      'gender': gender,
      'brandColor': brandColor,
      'balance': balance,
      'issuedDate': issuedDate,
      'dueDate': dueDate,
      'bestSeller': bestSeller,
      'saleOff': saleOff,
    };
  }

  // Create a copy of the Product instance with update values
//   Product copyWith({
//     int? id,
//     String? name,
//     String? store,
//     String? gender,
//     String? brandColor,
//     int? balance,
//     String? issuedDate,
//     String? dueDate,
//     bool? bestSeller,
//     int? saleOff,
//   }) {
//     return Product(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       store: store ?? this.store,
//       gender: gender ?? this.gender,
//       brandColor: brandColor ?? this.brandColor,
//       balance: balance ?? this.balance,
//       issuedDate: issuedDate ?? this.issuedDate,
//       dueDate: dueDate ?? this.dueDate,
//       bestSeller: bestSeller ?? this.bestSeller,
//       saleOff: saleOff ?? this.saleOff,
//     );
//   }
// }
// Todo: Add format from Json/ to son
// Have function copyWith
// Fixme (request and optional)
}

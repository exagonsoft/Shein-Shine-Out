class Product {
  int? _totalSize;
  int? _typeId;
  int? _offset;
  late List<ProductModel> _products;
  List<ProductModel> get products => _products;

  Product(
      {required totalSize,
      required typeId,
      required offset,
      required products}) {
    _totalSize = totalSize;
    _typeId = typeId;
    _offset = offset;
    _products = products;
  }

  Product.fromJson(Map<String, dynamic> json) {
    _totalSize = json['total_size'];
    _typeId = json['type_id'];
    _offset = json['offset'];
    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((product) {
        _products!.add(ProductModel.fromJson(product));
      });
    }
  }
}

class ProductModel {
  int? id;
  String? name;
  String? description;
  double? price;
  String? image;
  int? variations;
  int? delivery;
  int? rating;
  String? shopStore;
  String? createdAt;
  String? updatedAt;
  int? typeId;

  ProductModel(
      this.id,
      this.name,
      this.description,
      this.price,
      this.image,
      this.variations,
      this.delivery,
      this.rating,
      this.shopStore,
      this.createdAt,
      this.updatedAt,
      this.typeId);

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    image = json['image'];
    variations = json['variations'];
    delivery = json['delivery'];
    rating = json['rating'];
    shopStore = json['shopStore'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    typeId = json['typeId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['image'] = image;
    data['variations'] = variations;
    data['delivery'] = delivery;
    data['rating'] = rating;
    data['shopStore'] = shopStore;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['typeId'] = typeId;
    return data;
  }
}

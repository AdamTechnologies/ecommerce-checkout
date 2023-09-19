// To parse this JSON data, do
//
//     final getSingleProductModal = getSingleProductModalFromJson(jsonString);

import 'dart:convert';

GetSingleProductModal getSingleProductModalFromJson(String str) =>
    GetSingleProductModal.fromJson(json.decode(str));

String getSingleProductModalToJson(GetSingleProductModal data) =>
    json.encode(data.toJson());

class GetSingleProductModal {
  int? statusCode;
  SingleProductModal? data;
  String? message;
  bool? status;

  GetSingleProductModal({
    this.statusCode,
    this.data,
    this.message,
    this.status,
  });

  factory GetSingleProductModal.fromJson(Map<String, dynamic> json) =>
      GetSingleProductModal(
        statusCode: json["statusCode"],
        data: SingleProductModal.fromJson(json["data"]),
        message: json["message"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "data": data!.toJson(),
        "message": message,
        "status": status,
      };
}

class SingleProductModal {
  int? shippingCharges;
  String? id;
  String? name;
  String? description;
  UserId? userId;
  int? price;
  int? offerPrice;
  Brand? brand;
  Category? category;
  int? quantity;
  List<String>? images;
  int? status;
  List<Rating>? ratings;
  List<String>? countriesAvailable;
  bool? isActive;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  double? averageRating;
  int? totalRatings;
  bool? wishlisted;

  SingleProductModal({
    this.shippingCharges,
    this.id,
    this.name,
    this.description,
    this.userId,
    this.price,
    this.offerPrice,
    this.brand,
    this.category,
    this.quantity,
    this.images,
    this.status,
    this.ratings,
    this.countriesAvailable,
    this.isActive,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.averageRating,
    this.totalRatings,
    this.wishlisted,
  });

  factory SingleProductModal.fromJson(Map<String, dynamic> json) => SingleProductModal(
        shippingCharges: json["shipping_charges"],
        id: json["_id"],
        name: json["name"],
        description: json["description"],
        userId: UserId.fromJson(json["user_id"]),
        price: json["price"],
        offerPrice: json["offer_price"],
        brand: Brand.fromJson(json["brand"]),
        category: Category.fromJson(json["category"]),
        quantity: json["quantity"],
        images: List<String>.from(json["images"].map((x) => x)),
        status: json["status"],
        ratings:
            List<Rating>.from(json["ratings"].map((x) => Rating.fromJson(x))),
        countriesAvailable:
            List<String>.from(json["countries_available"].map((x) => x)),
        isActive: json["is_active"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        v: json["__v"],
        averageRating: json["averageRating"].toDouble(),
        totalRatings: json["totalRatings"],
        wishlisted: json["wishlisted"],
      );

  Map<String, dynamic> toJson() => {
        "shipping_charges": shippingCharges,
        "_id": id,
        "name": name,
        "description": description,
        "user_id": userId!.toJson(),
        "price": price,
        "offer_price": offerPrice,
        "brand": brand!.toJson(),
        "category": category!.toJson(),
        "quantity": quantity,
        "images": List<dynamic>.from(images!.map((x) => x)),
        "status": status,
        "ratings": List<dynamic>.from(ratings!.map((x) => x.toJson())),
        "countries_available":
            List<dynamic>.from(countriesAvailable!.map((x) => x)),
        "is_active": isActive,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "__v": v,
        "averageRating": averageRating,
        "totalRatings": totalRatings,
        "wishlisted": wishlisted,
      };
}

class Brand {
  String? id;
  String? brandName;
  String? description;

  Brand({
    this.id,
    this.brandName,
    this.description,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json["_id"],
        brandName: json["brand_name"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "brand_name": brandName,
        "description": description,
      };
}

class Category {
  String? id;
  String? name;
  String? description;

  Category({
    this.id,
    this.name,
    this.description,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["_id"],
        name: json["name"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "description": description,
      };
}

class Rating {
  String? id;
  int? number;
  String? text;

  Rating({
    this.id,
    this.number,
    this.text,
  });

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        id: json["_id"],
        number: json["number"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "number": number,
        "text": text,
      };
}

class UserId {
  String? id;
  String? username;
  String? email;

  UserId({
    this.id,
    this.username,
    this.email,
  });

  factory UserId.fromJson(Map<String, dynamic> json) => UserId(
        id: json["_id"],
        username: json["username"],
        email: json["email"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "username": username,
        "email": email,
      };
}

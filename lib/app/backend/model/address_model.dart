// To parse this JSON data, do
//
//     final getAddressModal = getAddressModalFromJson(jsonString);

import 'dart:convert';

GetAddressModal getAddressModalFromJson(String str) =>
    GetAddressModal.fromJson(json.decode(str));

String getAddressModalToJson(GetAddressModal data) =>
    json.encode(data.toJson());

class GetAddressModal {
  int? statusCode;
  AddressModal? data;
  String? message;
  bool? status;

  GetAddressModal({
    this.statusCode,
    this.data,
    this.message,
    this.status,
  });

  factory GetAddressModal.fromJson(Map<String, dynamic> json) =>
      GetAddressModal(
        statusCode: json["statusCode"],
        data: AddressModal.fromJson(json["data"]),
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

class AddressModal {
  String? id;
  String? userId;
  String? buildingName;
  String? fullName;
  String? phoneNumber;
  String? landmark;
  String? cityName;
  String? districtName;
  String? pincode;
  String? country;
  bool? isDefault;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  AddressModal({
    this.id,
    this.userId,
    this.buildingName,
    this.fullName,
    this.phoneNumber,
    this.landmark,
    this.cityName,
    this.districtName,
    this.pincode,
    this.country,
    this.isDefault,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory AddressModal.fromJson(Map<String, dynamic> json) => AddressModal(
        id: json["_id"],
        userId: json["user_id"],
        buildingName: json["building_name"],
        fullName: json["full_name"],
        phoneNumber: json["phone_number"],
        landmark: json["landmark"],
        cityName: json["city_name"],
        districtName: json["district_name"],
        pincode: json["pincode"],
        country: json["country"],
        isDefault: json["is_default"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "user_id": userId,
        "building_name": buildingName,
        "full_name": fullName,
        "phone_number": phoneNumber,
        "landmark": landmark,
        "city_name": cityName,
        "district_name": districtName,
        "pincode": pincode,
        "country": country,
        "is_default": isDefault,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "__v": v,
      };
}

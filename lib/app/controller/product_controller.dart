import 'dart:convert';
import 'dart:developer';

import 'package:ecommerce/app/backend/services/product_services.dart';
import 'package:get/get.dart';

import '../backend/model/get_single_product_model.dart';

class ProductController extends GetxController {
  var getSingleProductModal = GetSingleProductModal().obs;
  @override
  void onInit() {
    getSingleProductl();
    super.onInit();
  }

//get defualt address data
  void getSingleProductl() async {
    var response = await ProductServices.getSingleProduct();
    log(response!.body);
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      Map<String, dynamic> jsonMap = json.decode(response.body);

      getSingleProductModal.value = GetSingleProductModal.fromJson(jsonMap);
      // userName.value = user.firstName.toString();
      // log("userbane ${jsonMap["data"]["first_name"].toString()}");

      // currentUser.value = user;

      log(getSingleProductModal.value.data!.brand.toString());
    } else {
      log(response.body);
    }
    update();
  }
}

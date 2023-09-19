import 'dart:convert';
import 'dart:developer';

import 'package:ecommerce/app/backend/model/address_model.dart';
import 'package:ecommerce/app/backend/services/address_services.dart';
import 'package:get/get.dart';

class AddressController extends GetxController {
  var defualtAddress = GetAddressModal().obs;
  @override
  void onInit() {
    getDefualtAddress();
    super.onInit();
  }

//get defualt address data
  void getDefualtAddress() async {
    var response = await AddressServices.getDefualtAddress();
    log(response!.body);
    if (response.statusCode >= 200 && response.statusCode <= 299) {
      Map<String, dynamic> jsonMap = json.decode(response.body);

      defualtAddress.value = GetAddressModal.fromJson(jsonMap);
      // userName.value = user.firstName.toString();
      // log("userbane ${jsonMap["data"]["first_name"].toString()}");

      // currentUser.value = user;

      log(defualtAddress.value.data!.fullName.toString());
    } else {
      log(response.body);
    }
    update();
  }
}

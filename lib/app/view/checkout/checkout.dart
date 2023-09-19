import 'package:ecommerce/app/controller/address_controller.dart';
import 'package:ecommerce/app/controller/product_controller.dart';
import 'package:ecommerce/app/util/constants.dart';
import 'package:ecommerce/app/util/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  void initState() {
    Get.put(AddressController());
    Get.put(ProductController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    AddressController addressController = Get.put(AddressController());
    ProductController productController = Get.put(ProductController());
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(
            Icons.arrow_back,
            size: 22,
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Checkout",
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
            ),
          )),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "DELIVERY ADDRESS",
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            width: 27.wp,
                            height: 27,
                            child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            color: Colors.grey),
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                onPressed: () {},
                                child: Text(
                                  "CHANGE",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      // color: Colors.o,
                                      fontWeight: FontWeight.w500),
                                )),
                          )
                        ],
                      ),
                      sbHt10,
                      Container(
                        child: Obx(
                          () {
                            return addressController
                                        .defualtAddress.value.data !=
                                    null
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "${addressController.defualtAddress.value.data!.fullName.toString()} ,",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black87),
                                          ),
                                          sbWd10,
                                          Text(
                                            "${addressController.defualtAddress.value.data!.phoneNumber.toString()} ,",
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black87),
                                          ),
                                          sbWd10,
                                          Text(
                                            addressController.defualtAddress
                                                .value.data!.buildingName
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      ),
                                      sbHt5,
                                      Row(
                                        children: [
                                          Text(
                                            "${addressController.defualtAddress.value.data!.cityName.toString()} ,",
                                            style: TextStyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black87),
                                          ),
                                          sbWd10,
                                          Text(
                                            "${addressController.defualtAddress.value.data!.landmark.toString()} ,",
                                            style: TextStyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black87),
                                          ),
                                          sbWd10,
                                          Text(
                                            addressController.defualtAddress
                                                .value.data!.districtName
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      ),
                                      sbHt5,
                                      Row(
                                        children: [
                                          Text(
                                            "${addressController.defualtAddress.value.data!.pincode.toString()} ,",
                                            style: TextStyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black87),
                                          ),
                                          sbWd10,
                                          Text(
                                            addressController.defualtAddress
                                                .value.data!.country
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black87),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : const Center(
                                    child: Text("No Data"),
                                  );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

//address end
            sbHt20,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                "ORDER SUMMARY",
                // value[index]!.qty.toString(),
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp),
              ),
            ),
            sbHt10,
            Obx(
              () => productController.getSingleProductModal.value.data != null
                  ? Card(
                      elevation: 1,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.black87),
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  width: 25.wp,
                                  height: 25.wp,
                                  child: Image.network(
                                    productController.getSingleProductModal
                                        .value.data!.images![0]
                                        .toString(),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                sbHt10,
                                Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black87),
                                      child: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                    ),
                                    sbWd10,
                                    const Text(
                                      "1",
                                      // value[index]!.qty.toString(),
                                      style: TextStyle(color: Colors.black87),
                                    ),
                                    sbWd10,
                                    Container(
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black87),
                                      child: const Icon(
                                        Icons.remove,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                sbHt10,
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 55.wp,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          overflow: TextOverflow.ellipsis,
                                          productController
                                              .getSingleProductModal
                                              .value
                                              .data!
                                              .name
                                              .toString(),
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black87),
                                        ),
                                        sbHt5,
                                        Text(
                                          productController
                                              .getSingleProductModal
                                              .value
                                              .data!
                                              .description
                                              .toString(),
                                          maxLines: 2,
                                          // overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Colors.black87,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        sbHt10,
                                        Row(
                                          children: [
                                            Stack(
                                              children: [
                                                Text(
                                                  "\$${productController.getSingleProductModal.value.data!.price.toString()}",
                                                  // "₹ {(cartProduct.price! * value[index]!.qty!).toString()}",
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.grey),
                                                ),
                                                const Positioned(
                                                  top: 0,
                                                  bottom: 0,
                                                  child: SizedBox(
                                                    width: 70,
                                                    child: Divider(
                                                      color: Colors.grey,
                                                      thickness: 2,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                            sbWd10,
                                            Text(
                                              "\$${productController.getSingleProductModal.value.data!.offerPrice.toString()}",
                                              // "₹ {(cartProduct.price! * value[index]!.qty!).toString()}",
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w700,
                                                  color: Colors.green),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : const Center(
                      child: Text("No Product added"),
                    ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: const Text(
                "CONTINUE",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}

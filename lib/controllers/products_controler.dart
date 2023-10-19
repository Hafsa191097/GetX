import 'dart:developer';

import 'package:get/get.dart';

import '../models/product_items.dart';

class ProductControler extends GetxController{
  // ignore: non_constant_identifier_names
  var items=  <ProductItems>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetchData();
  }
  void fetchData(){
    var products =[
      ProductItems(id: '12345ewafd', name: 'Lipstick', price: 34.5),
      ProductItems(id: '12345ewafd', name: 'Lipstick', price: 34.5),
      ProductItems(id: '12345ewafd', name: 'Lipstick', price: 34.5),
      ProductItems(id: '12345ewafd', name: 'Lipstick', price: 34.5),
    ];
    items.value = products;
    log("done");
  }
}
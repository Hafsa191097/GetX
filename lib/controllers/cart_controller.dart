
import 'package:get/get.dart';

import '../models/product_items.dart';

class CartControler extends GetxController{
  // ignore: non_constant_identifier_names
  var cartitems=  <ProductItems>[].obs;
  int get count => cartitems.length;
  addtocart(ProductItems item) {
    cartitems.add(item);
  }
}
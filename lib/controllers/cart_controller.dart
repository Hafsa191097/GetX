
import 'package:get/get.dart';

import '../models/product_items.dart';

class CartControler extends GetxController{
  // ignore: non_constant_identifier_names
  var cartitems=  <ProductItems>[].obs;
  int get count => cartitems.length;
  double get totalPrice => cartitems.fold(0, (sum, item) => sum + item.price);
  addtocart(ProductItems item) {
    cartitems.add(item);
  }
}
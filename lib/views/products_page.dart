import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controllers/cart_controller.dart';
import 'package:getx/models/product_items.dart';

import '../controllers/products_controler.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({super.key});
  final controller = Get.put(ProductControler());
  final cartcontroller = Get.put(CartControler());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          GetX<ProductControler>(
            builder: (controller) {
              return ListView.builder(
                itemCount: controller.items.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GetX<ProductControler>(builder: (controller) {
                                return Text(
                                    '${controller.items[index].id}');
                              }),
                              GetX<ProductControler>(builder: (controller) {
                                return Text(
                                    '${controller.items[index].price}');
                              }),
                            ],
                          ),
                          Row(
                            children: [
                              GetX<ProductControler>(builder: (controller) {
                                return Text(
                                    '\$${controller.items[index].name}');
                              }),
                              ElevatedButton(
                                onPressed: cartcontroller
                                    .addtocart(controller.items[index]),
                                child: Text('Add to cart'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
         GetX<ProductControler>(
           builder: (CartControler) {
             return FloatingActionButton.extended(onPressed: (){}, icon: Icon(Icons.shopping_cart), label: Text('$cartcontroller.count'));
           }
         )
        ],
        

      ),
      
    );
  }
}

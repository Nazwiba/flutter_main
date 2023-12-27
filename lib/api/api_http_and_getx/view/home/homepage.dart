import 'package:flutter/material.dart';
import 'package:flutter_main/api/api_http_and_getx/controller/product_controller.dart';
import 'package:get/get.dart';
import 'widgets/product_tile.dart';

void main() {
  runApp(GetMaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  final productContoller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api"),
      ),
      body: SizedBox(
        child: Obx(() {
          if (productContoller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return GridView.builder(
                itemCount: productContoller.productList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return ProductTile(productContoller.productList[index]);
                });
          }
        }),
      ),
    );
  }
}

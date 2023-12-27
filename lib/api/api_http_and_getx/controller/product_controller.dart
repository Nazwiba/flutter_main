import 'package:flutter_main/api/api_http_and_getx/service/http_services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  //bool isloading = true;
  RxBool isLoading = true.obs;
  var productList = [].obs;
  @override
  void onInit() {
    loadProduct(); // to fetch data from service class
    super.onInit();
  }

  void loadProduct() async {
    try {
      isLoading(true);
      var products = await HttpService.fetchProducts();
      if (products != null) {
        productList.value = products;
      }
    } 
    catch (e) {
      print(e);
    } 
    finally {
      isLoading(false);
    }
  }
}

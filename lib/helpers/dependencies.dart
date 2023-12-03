import 'package:get/get.dart';
import 'package:shein_shine_out/controllers/popular_products_controller.dart';
import 'package:shein_shine_out/data/api/client_api.dart';
import 'package:shein_shine_out/data/repositories/popular_products_repo.dart';

Future<void> init() async {
  //API Client
  Get.lazyPut(() => ClientApi(baseAppUrl: "http://"));
  //Repositories
  Get.lazyPut(() => PopularProductsRepo(clientApi: Get.find()));
  //Controllers
  Get.lazyPut(() => PopularProductsController(popularProductsRepo: Get.find()));
}

import 'package:get/get.dart';
import 'package:shein_shine_out/data/repositories/popular_products_repo.dart';
import 'package:shein_shine_out/models/product_model.dart';

class PopularProductsController extends GetxController {
  final PopularProductsRepo popularProductsRepo;
  PopularProductsController({required this.popularProductsRepo});
  List<dynamic> _popularProductsList = [];
  List<dynamic> get popularProductList => _popularProductsList;

  Future<void> getPopularProductList() async {
    Response res = await popularProductsRepo.getPopularProductsList();
    if (res.statusCode == 200) {
      _popularProductsList = [];
      _popularProductsList.addAll(Product.fromJson(res.body).products);
      update();
    } else {
      //Todo Notify Error
    }
  }
}

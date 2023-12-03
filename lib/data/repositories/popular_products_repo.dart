import 'package:get/get.dart';
import 'package:shein_shine_out/data/api/client_api.dart';

class PopularProductsRepo extends GetxService {
  final ClientApi clientApi;
  PopularProductsRepo({required this.clientApi});

  Future<Response> getPopularProductsList() async {
    return await clientApi.getData("https:");
  }
}

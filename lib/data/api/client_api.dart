import 'package:get/get.dart';

class ClientApi extends GetConnect implements GetxService {
  late String token;
  final String baseAppUrl;
  late Map<String, String> _requestHeaders;

  ClientApi({required this.baseAppUrl}) {
    baseUrl = baseAppUrl;
    timeout = const Duration(minutes: 1);
    _requestHeaders = {
      'Content-type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    };
  }

  Future<Response> getData(
    String uri,
  ) async {
    try {
      Response res = await get(uri);
      return res;
    } catch (e) {
      return Response(statusCode: 1, statusText: e.toString());
    }
  }
}

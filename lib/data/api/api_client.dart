import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService{
  late String token;
  final String AppBaseUrl;

  late Map<String,String> _mainHeaders;
  ApiClient({
    required this.AppBaseUrl
  }){
    baseUrl = AppBaseUrl;
    timeout = Duration(seconds: 30);
  }

}
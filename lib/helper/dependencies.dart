import 'package:flutter_food_delivery/data/api/api_client.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

Future<void> init()async{
Get.lazyPut(()=>ApiClient(AppBaseUrl: "https://www.dbestech.com"));
}
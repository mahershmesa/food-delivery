import 'package:flutter_food_delivery/controllers/popular_product_controller.dart';
import 'package:flutter_food_delivery/data/api/api_client.dart';
import 'package:flutter_food_delivery/data/repository/popular_product_repo.dart';
import 'package:flutter_food_delivery/utils/app_constants.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

Future<void> init()async{
  //api client
Get.lazyPut(()=>ApiClient(AppBaseUrl: AppConstants.BASE_URL));
// repos
Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
//controllers
Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
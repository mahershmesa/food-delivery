import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/pages/food/popular_food_detail.dart';
//import 'package:flutter_food_delivery/home/main_food_page.dart';
import 'package:flutter_food_delivery/pages/home/main_food_page.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'helper/dependencies.dart' as dep;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainFoodPage(),
    );
  }
}
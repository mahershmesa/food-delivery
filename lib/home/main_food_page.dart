import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/home/food_page_body.dart';
import 'package:flutter_food_delivery/utils/colors.dart';
import 'package:flutter_food_delivery/utils/dimansions.dart';
import 'package:flutter_food_delivery/widgets/big_text.dart';
import 'package:flutter_food_delivery/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({ Key? key }) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
   // print("current height is"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body:Column(
        children: [
          Container(
          child: Container(
            margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.height15),
            padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
            Column(
              children: [
              BigText(text: "Bangladesh",color: AppColors.mainColor,),
              Row(
                children: [
                  SmallText(text: "Narsingdi",color: Colors.black54,),
                ],
              ),
              ],
          ),
          Center(
            child: Container(
              width: Dimensions.height45,
              height: Dimensions.height45,
              child: Icon(Icons.search,color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                color: AppColors.mainColor,
              ),
            ),
          ),
            ],
            ),
          ), 
          ),
          FoodPageBody(),
        ],
      ),
    );
  }
}
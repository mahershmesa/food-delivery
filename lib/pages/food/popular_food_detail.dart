
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/controllers/cart_controller.dart';
import 'package:flutter_food_delivery/controllers/popular_product_controller.dart';
import 'package:flutter_food_delivery/pages/cart/cart_page.dart';
import 'package:flutter_food_delivery/pages/home/main_food_page.dart';
import 'package:flutter_food_delivery/utils/app_constants.dart';
import 'package:flutter_food_delivery/utils/dimansions.dart';
import 'package:flutter_food_delivery/widgets/exandable_text_widget.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';

import '../../widgets/app_column.dart';
import '../../widgets/app_icon.dart';
import '../../widgets/big_text.dart';


class PopularFoodDetail extends StatelessWidget {
  final int pageId;
    const PopularFoodDetail({Key? key,required this.pageId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product=Get.find<PopularProductController>().popularProductList[pageId];
    Get.find<PopularProductController>().initProduct(product,Get.find<CartController>());
    print('page id is ${pageId.toString()}');
    print('product name is'+product.name.toString());
    print(product.img.toString());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
          right: 0,
              child:Container(
                height: Dimensions.popularFoodImgSize,
                width:double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      AppConstants.BASE_URL+'/uploads/'+product.img!
                    ),
                    fit: BoxFit.cover,
                  )
                ),
              )
          ),
          //icon widgets
          Positioned(
            top: Dimensions.height15*3,
            left: Dimensions.width10*2,
            right: Dimensions.width10*2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap:(){
                  Get.to(()=>MainFoodPage());
                },
                child: AppIcon(
                    icon:Icons.arrow_back_ios
                ),
              ),
              GetBuilder<PopularProductController>(builder: (controller){
                return Stack(
                  children: [
                    GestureDetector(
                      onTap:(){
                        Get.to(()=>CartPage());
                      },
                      child: AppIcon(
                        icon:Icons.shopping_cart_outlined,
                      ),
                    ),
                    Get.find<PopularProductController>().totalItem>=1?
                Positioned(
                  right: 0,top:0,
                  child: AppIcon(
                    icon:Icons.circle,
                    size: 20.0,
                    iconColor: Colors.transparent,
                    backgroundColor: AppColors.mainColor,
                  ),
                ) :Container(),
                  Get.find<PopularProductController>().totalItem>=1?
                Positioned(
                right: 4,top:3,
                child: BigText(text: Get.find<PopularProductController>().totalItem.toString(),
                size:12,
                color:Colors.white,

                ),
                ):Container()
                  ],
                );
              }),
            ],
          ) ,
          ),
          //introduction of food
          Positioned(
            left: 0,
              right: 0,
              top: Dimensions.popularFoodImgSize-25,
              bottom: 0,
              child:Container(
                padding: EdgeInsets.only(left: Dimensions.width10*2,right: Dimensions.width10*2,top: Dimensions.height10*2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight:Radius.circular(Dimensions.radius20),
                    topLeft:Radius.circular(Dimensions.radius20)),

              ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: product.name!),
                    SizedBox(height: Dimensions.height10*2,),
                    BigText(text: 'Introduce'),
                    SizedBox(height: Dimensions.height10*2,),
                    //expandable text widget
                    Expanded(
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                          child: ExpandableTextWidget(
                              text: product.description!)),
                    )
                  ],
                ),
              ),
          ),
        ],
      ),
      bottomNavigationBar: GetBuilder<PopularProductController>(
        builder: (popularProduct) {
          return Container(
            height: Dimensions.height10*12,
            padding: EdgeInsets.only(top: Dimensions.height10*3,bottom: Dimensions.height10*3,left: Dimensions.width10*2,right: Dimensions.width10*2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20*2),
                topRight: Radius.circular(Dimensions.radius20*2),
              ),
              color: AppColors.buttonBackgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: Dimensions.height10*2,bottom: Dimensions.height10*2,left: Dimensions.width10*2,right: Dimensions.width10*2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white
                  ),
                  child: Row(
                    children: [
                      GestureDetector(
                          onTap: (){
                            popularProduct.setQuantity(false);
                          },
                          child: Icon(Icons.remove,color: AppColors.signColor,))  ,
                      SizedBox(width: Dimensions.width10/2,),
                      BigText(text: popularProduct.inCartItems.toString()),
                      SizedBox(width: Dimensions.width10/2,),
                      GestureDetector(
                          onTap: (){
                            popularProduct.setQuantity(true);
                          },
                          child: Icon(Icons.add,color: AppColors.signColor,))
                    ],
                  ),
                ),
                GestureDetector(
                  onTap:(){
                    popularProduct.addItem(product);
                  },
                  child: Container(
                      child: BigText(text: '\$ ${product.price!} | Add to Cart',color: Colors.white,),
                  padding: EdgeInsets.only(top: Dimensions.height10*2,bottom: Dimensions.height10*2,left: Dimensions.width10*2,right: Dimensions.width10*2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        color: AppColors.mainColor
                    ),


                  ),
                ),
              ],
            ),
          );
        },


      ),
    );
  }
}

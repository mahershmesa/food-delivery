import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/utils/colors.dart';
import 'package:flutter_food_delivery/utils/dimansions.dart';
import 'package:flutter_food_delivery/widgets/big_text.dart';

class RecomenedFoodDetail extends StatelessWidget {
  const RecomenedFoodDetail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
               // margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                color: Colors.white,
                child: Center(child: BigText(size: Dimensions.font26, text: "Chiinese SIDE")),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 10),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
                ),
            ),
          ),
        
        SliverToBoxAdapter(
          child: Text(
            "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",

          ),
        )

        ],
      ),
    );
  }
}
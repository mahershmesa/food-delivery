import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/utils/colors.dart';
import 'package:flutter_food_delivery/widgets/big_text.dart';
import 'package:flutter_food_delivery/widgets/icon_and_text_widget.dart';
import 'package:flutter_food_delivery/widgets/small_text.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({ Key? key }) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {

  PageController pageController=PageController(viewportFraction:0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.red,
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5, 
        itemBuilder: (context,position){
          return _buildPageItem(position);
        }),
    );
  }//هلا هون بيخلص التابع 
  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
      height: 220,
      margin:EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color:index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/image/food1.png")
        )
      ),
    ),
    ////////////تداخل container
    Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 120,
        margin:EdgeInsets.only(left: 20,right: 20,bottom: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color:Colors.white,
        ),
      child: Container(
        padding: EdgeInsets.only(top: 15,left: 15,right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BigText(text: "Chinese Side"),
            SizedBox(height: 10,),
            Row(
              children: [
                Wrap(
                  children: 
                    List.generate(5, (index) => Icon(Icons.star,color: AppColors.mainColor,size: 15,),
                    ),
                  
                ),
                SizedBox(width: 10,),
                SmallText(text: "4.5"),
                SizedBox(width: 10,),
                SmallText(text: "1287"),
                SizedBox(width: 10,),
                SmallText(text: "comments")
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                IconAndTextWidget(icon: Icons.circle_sharp,
                  text: "Normal",
                  iconColor: AppColors.iconColor1
                  ),
                  IconAndTextWidget(icon: Icons.location_on,
                  text: "1.7km",
                  iconColor: AppColors.mainColor
                  ),
                  IconAndTextWidget(icon: Icons.access_time_rounded,
                  text: "32min",
                  iconColor: AppColors.iconColor2
                  ),
              ],
            ),
          ],
        ),
      ),

      ),
    ),
      ],
    );
  }
}
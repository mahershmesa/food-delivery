import 'package:get/get.dart';

class Dimensions{
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView=screenHeight/2.64;
  static double pageViewContainer= screenHeight/3.84;
  static double pageViewTextContainer= screenWidth/7.03;


//dynamic height padding and margin
  static double height10 = screenHeight/84.4;//for sizebox
  static double height20 = screenHeight/42.2;
  static double height15 = screenHeight/56.27;
  static double height30 = screenHeight/28.13;
  static double height45 = screenHeight/18.76;


//dynamic width padding and margin
  static double width10 = screenHeight/84.4;//for sizebox
  static double width20 = screenHeight/42.2;
  static double width15 = screenHeight/56.27;
  static double width30 = screenHeight/28.13;

//font size
  static double font20 = screenHeight/42.2;
  static double font26 = screenHeight/32.46;
  static double font16 = screenHeight/52.75;
//radius
  static double radius20 = screenHeight/42.2;
  static double radius30 = screenHeight/28.13;
  static double radius15 = screenHeight/56.27;


  //icon Size
  static double iconSize24 = screenHeight/35.17;
  static double iconSize16 = screenHeight/52.75;



// list view size
static double ListViewImgSize = screenWidth/3.25;
static double ListViewTextContSize= screenWidth/3.9;


//pupolar food
static double popularFoodImgSize = screenHeight/2.41;

//bottom height
static double bottomheightbar = screenHeight/7.03;
}
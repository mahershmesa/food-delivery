import 'package:flutter/cupertino.dart';
import 'package:flutter_food_delivery/utils/dimansions.dart';
import 'package:flutter_food_delivery/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  const IconAndTextWidget({ Key? key,
  required this.icon, 
  required this.text,
    required this.iconColor
  }) : super(key: key);
final IconData icon;
final String text;
final Color iconColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconColor,size: Dimensions.iconSize24,),
        SizedBox(width: 5,),
        SmallText(text: text,),
      ],
    );
  }
}
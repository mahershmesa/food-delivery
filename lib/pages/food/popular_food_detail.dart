import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PupularFoodDetail extends StatelessWidget {
  const PupularFoodDetail({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child:
            Container(
            width: double.maxFinite,
            height: 350,
            ),
            ),
        ],
      ),
    );
  }
}
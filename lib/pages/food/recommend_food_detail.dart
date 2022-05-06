import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecomenedFoodDetail extends StatelessWidget {
  const RecomenedFoodDetail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                ),
            ),
          )
        ],
      ),
    );
  }
}
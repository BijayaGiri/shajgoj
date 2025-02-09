import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';

Widget SkinCare({required String mtitle,required String msubtitle,double ?mtop}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: EdgeInsets.only(top: mtop??10,left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(mtitle,style: Whitebackgroundstyle.copyWith(fontSize: 28,color: Colors.black.withAlpha(180)),),
            Text(msubtitle,style: Whitebackgroundstyle.copyWith(fontSize: 12,color: Colors.black.withAlpha(150)),)
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MIcon(),
            MIcon(),
            MIcon(),
            MIcon(),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MIcon(),
            MIcon(),
            MIcon(),
            MIcon(),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MIcon(),
            MIcon(),
            MIcon(),
            MIcon(),
          ],
        ),
      ),

    ],
  );
}
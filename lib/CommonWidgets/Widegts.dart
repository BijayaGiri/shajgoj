import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopifyclone/UI/HomeScreen.dart';
import 'package:shopifyclone/UI/Profile.dart';

class CommonWidgets{

  Widget ComAppbar(BuildContext context){
    return Row(
      children: [
        Text("SHAJGOJ",style: Headline),
        Spacer(),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.search,color: appbariconcolor,),
              Icon(Icons.shopping_bag_outlined,color: appbariconcolor,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                  },
                  child: Icon(Icons.person_pin,color:appbariconcolor,))
            ],
          ),
        )
      ],
    );

  }
}
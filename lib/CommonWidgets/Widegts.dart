import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopifyclone/SubScreens/AddToBag.dart';
import 'package:shopifyclone/SubScreens/Checkout.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/UI/HomeScreen.dart';
import 'package:shopifyclone/UI/Profile.dart';
import 'package:shopifyclone/Utilities/Controller.dart';
import 'package:get/get.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';
class CommonWidgets{
BagController _bagController=Get.put(BagController());
  Widget ComAppbar(BuildContext context){
    return Row(
      children: [
        Text("Ithari Medical",style: Headline),
        Spacer(),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.search,color: appbariconcolor,),
              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Addtobag()));
                  },
                  child: Icon(Icons.shopping_bag_outlined,color: appbariconcolor,)),
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
  Widget AddToCartBottomBar(BuildContext context,{required String BottomText,String ?NextScreen}){
    return Container(
      child:Container(
        decoration: BoxDecoration(
            border: Border(top: BorderSide(color: Colors.grey.shade200))
        ),
        height: 80,
        width: MediaQuery.of(context).size.height,
        child:Padding(
          padding: const EdgeInsets.only(left: 15,right:15,top: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_bagController.count.value.toString()+" Items on your cart",style: BottomNavigationstyle.copyWith(fontSize: 13,color: Colors.black.withAlpha(180),fontWeight: FontWeight.w900),),
                  Text("NPR.50",style: BottomNavigationstyle.copyWith(fontSize: 13,color: Colors.black.withAlpha(180),fontWeight: FontWeight.w900),),
                ],
              ),
              GestureDetector(
                onTap: (){
                  NextScreen!.toLowerCase()=="cartscreen"?Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckoutScreen())):null;
                },
                child: Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      color: ThemeColor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("$BottomText",style: Whitebackgroundstyle,),
                      Icon(Icons.arrow_forward)
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
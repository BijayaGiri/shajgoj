import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Utilities/Controller.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';

import '../UI/HomeScreen.dart';
import '../UI/Profile.dart';
class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  BagController _bagController=Get.put(BagController());
  @override
  Widget build(BuildContext context) {
    print(_bagController.count.value);
    return Scaffold(
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: ThemeColor,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text("Clean All",style: Whitebackgroundstyle,)),

        ),
      ),
      appBar:AppBar(
        title: CommonWidgets().ComAppbar(context),
      ),
      body: Column(
        children: [
      Padding(
      padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey.shade200,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 20,right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius:BorderRadius.circular(10),
                      child: Image.asset("assets/images/AddToCart/Tresme.png",height: 70,)),
                  Flexible(child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tresme Soft Light Moisturising Cream 50.0ml",style: BottomNavigationstyle.copyWith(fontSize: 13),),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text("50 ml",style: BottomNavigationstyle.copyWith(fontSize: 13),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text("NPR.50",style: BottomNavigationstyle.copyWith(fontWeight: FontWeight.w800,fontSize: 13,color: Colors.black.withAlpha(180)),),
                        )
                      ],
                    ),
                  )),
                  Image.asset("assets/images/AddToCart/Cross.png",color: Colors.grey,height: 20,)
                ],
              ),
            ),
          ],
        ),
      ),
    )
        ],
      ),
    );
  }
}

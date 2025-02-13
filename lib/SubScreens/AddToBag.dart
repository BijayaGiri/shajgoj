import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Utilities/Controller.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';

import '../UI/HomeScreen.dart';
import '../UI/Profile.dart';
class Addtobag extends StatefulWidget {
  const Addtobag({super.key});

  @override
  State<Addtobag> createState() => _AddtobagState();
}

class _AddtobagState extends State<Addtobag> {
  BagController _bagController=Get.put(BagController());
  @override
  Widget build(BuildContext context) {
    print(_bagController.count.value);
    return Scaffold(
      bottomNavigationBar:Obx((){
        return _bagController.count>0?CommonWidgets().AddToCartBottomBar(context, BottomText: "Next",NextScreen: "CartSCreen"):Container();
      }),
appBar: AppBar(
  automaticallyImplyLeading: true,
  title: Row(
    children: [
      Text("Bag",style: Headline),
    Obx((){
      return   SizedBox(
          width:150 ,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(_bagController.count.value.toString()+" items in your cart",style: BottomNavigationstyle,),
          ));
    }),
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
  ),
),
      body: Column(
        children: [
        Obx((){
          if (_bagController.count.value>0) {
            return CartItem(context, _bagController);
          } else {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(child: Text("No data in your cart",style: BottomNavigationstyle.copyWith(color: Colors.black),)),
            );
          }
        }),
        ],
      ),
    );
  }
}
Widget CartItem(BuildContext context,BagController _bagController){
  return  Padding(
    padding: const EdgeInsets.only(left: 15,right: 15,top: 20),
    child: Container(
      height: 160,
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
                    child: Image.asset("assets/images/AddToCart/Tresme.png",height: 80,)),
                Flexible(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text("Tresme Soft Light Moisturising Cream 50.0ml",style: BottomNavigationstyle.copyWith(fontSize: 13),),
                )),
                Image.asset("assets/images/AddToCart/Cross.png",height: 20,color: Colors.grey,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Divider(),
          ),
          Obx((){
            return Padding(
              padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("NPR.50",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(200)),),
                  Spacer(),
                  GestureDetector(
                    onTap: (){
                      _bagController.UnSetBag();
                    },
                    child: CircleAvatar(
                        maxRadius: 10,
                        backgroundColor:ThemeColor,
                        child: Center(child: Icon(Icons.remove,color: Colors.white,size: 20,))),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(_bagController.count.value.toString()),
                  ),
                  GestureDetector(
                    onTap: (){
                      _bagController.SetBag();
                    },
                    child: CircleAvatar(
                        maxRadius: 10,
                        backgroundColor:ThemeColor,
                        child: Center(child: Icon(Icons.add,color: Colors.white,size: 20,))),
                  ),
                ],
              ),
            );
          })
        ],
      ),
    ),
  );
}

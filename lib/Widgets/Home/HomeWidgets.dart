import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopifyclone/SubScreens/Address.dart';
import 'package:shopifyclone/SubScreens/LoginScreen.dart';
import 'package:shopifyclone/SubScreens/LoyaltyProgram.dart';
import 'package:shopifyclone/SubScreens/OrderScreen.dart';
import 'package:shopifyclone/SubScreens/PrivacyPolicy.dart';
import 'package:shopifyclone/SubScreens/ProductDiscription.dart';
import 'package:shopifyclone/SubScreens/ReturnRefund.dart';
import 'package:shopifyclone/SubScreens/Shipping.dart';
import 'package:shopifyclone/SubScreens/TermsCondition.dart';
import 'package:shopifyclone/SubScreens/Vouchers.dart';
import 'package:shopifyclone/SubScreens/Wishlist.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/UI/Categories.dart';
import 'package:shopifyclone/UI/Profile.dart';

import '../../Utilities/Controller.dart';
Widget HomeHeadline({required String Heading, double ?mtop,double ?mbottom,Color ?mcolor} ){
  return  Padding(
    padding:  EdgeInsets.only(top:mtop??20,bottom: mbottom??0),
    child: Text(
      "$Heading",
      style: Whitebackgroundstyle.copyWith(color: mcolor??Colors.black),
    ),
  );

}

Widget QuickLinks({required String title}){

  return  Container(
    height: 50,
    width: 180,
    decoration: BoxDecoration(
      border: Border.all(
          color: Colors.grey.shade300
      ),
      borderRadius: BorderRadius.circular(10),
      color:Colors.grey.shade200,

    ),
    child: Center(
        child: Text("$title",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(200)),)),
  );
}
Widget MIcon(BuildContext context){
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>CategoriesScreen()));
    },
    child: Container(
      height: 100,
      width: 90,
      decoration: BoxDecoration(
        color: ThemeColor,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10,right:10,top: 10),
        child: Column(
          children: [
            Image.asset("assets/images/HomeScreen/Icons/FaceWash.png",height: 50
              ,),
            Padding(
              padding: const EdgeInsets.only(top:10,bottom: 5),
              child: Container(
                height: 0.5,
                width: 80,
                color: Colors.white,
              ),
            ),
            Text("FaceWash",style: Whitebackgroundstyle.copyWith(fontSize: 12),)
          ],
        ),
      ),
    ),
  );
}
Color ThemeColor=Colors.lightBlue;
Widget FeaturedProducts(BuildContext context,){
  BagController _bagController=Get.put(BagController());
  return  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        GestureDetector(
          onTap: (){
            Navigator.push((context), MaterialPageRoute(builder: (context)=>ProductDiscription()));
          },
          child: Container(
            height: 370,
            width: 185,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: Colors.grey.shade200,
                    width: 2
                )
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height: 180,
                    width: 180,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/HomeScreen/Tresme.png",
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                Flexible(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Cosrx Salicylic Acid Daily Gentle Cleanser",style: BottomNavigationstyle,textAlign: TextAlign.center,),
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("150ml",style: BottomNavigationstyle.copyWith(fontWeight: FontWeight.normal),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: Container(
                    height: 25,
                    width: 185,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Save 401 Taka",style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                      ),
                    ),
                  ),
                ),
                Text("₹500",style:  TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black.withAlpha(200),
                  fontSize: 12, )),
                GestureDetector(
                  onTap: _bagController.SetBag,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Container(
                        height: 35,
                        width: 185,
                        decoration: BoxDecoration(
                          color:ThemeColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add,color: Colors.white,),
                            Text("Add to cart",style: Whitebackgroundstyle.copyWith(fontSize: 12),)
                          ],
                        )
                    ),
                  ),
                ),

              ],
            ) ,
          ),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push((context), MaterialPageRoute(builder: (context)=>ProductDiscription()));
          },
          child: Container(
            height: 370,
            width: 185,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: Colors.grey.shade200,
                    width: 2
                )
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height: 180,
                    width: 180,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/HomeScreen/Tresme.png",
                          fit: BoxFit.fill,
                        )),
                  ),
                ),
                Flexible(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Cosrx Salicylic Acid Daily Gentle Cleanser",style: BottomNavigationstyle,textAlign: TextAlign.center,),
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text("150ml",style: BottomNavigationstyle.copyWith(fontWeight: FontWeight.normal),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: Container(
                    height: 25,
                    width: 185,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text("Save 401 Taka",style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black54,
                        fontSize: 12,
                      ),
                      ),
                    ),
                  ),
                ),
                Text("₹500",style:  TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.black.withAlpha(200),
                  fontSize: 12, )),
                GestureDetector(
                  onTap: _bagController.SetBag,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                    child: Container(
                        height: 35,
                        width: 185,
                        decoration: BoxDecoration(
                          color:ThemeColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add,color: Colors.white,),
                            Text("Add to cart",style: Whitebackgroundstyle.copyWith(fontSize: 12),)
                          ],
                        )
                    ),
                  ),
                ),

              ],
            ) ,
          ),
        ),



      ],
    ),
  );
}

Widget HomeLastContainer(BuildContext context,{required String mTitle,required String mSubtitle}){
  return Padding(
    padding: const EdgeInsets.only(left: 15,right: 15,top: 5),
    child: Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: ThemeColor,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(mTitle,style: Whitebackgroundstyle.copyWith(fontSize: 17),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(mSubtitle,style: Whitebackgroundstyle.copyWith(fontWeight: FontWeight.normal),),
                Icon(Icons.arrow_forward,color: Colors.white,)

              ],
            )
          ],
        ),
      ),
    ),
  );
}
Widget RoundedBlueContainer({double ?width}){
  return Container(
    height: 30,
    width: width??150,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
    ),
    child: Center(child: Text("0.00 Points",style: Whitebackgroundstyle.copyWith(color: Colors.blue),)),
  );
}
Widget DealsYouCanotMiss(){
  return  Padding(
    padding: const EdgeInsets.only(top: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 180,
          width: 180,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/images/HomeScreen/Tresme.png",
                fit: BoxFit.fill,
              )),
        ),
        SizedBox(
          height: 180,
          width: 180,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/images/HomeScreen/Tresme.png",
                fit: BoxFit.fill,
              )),
        )
      ],
    ),
  );
}
Widget SaveMore(BuildContext context,{required String imageloc}){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
    child: Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          "$imageloc",
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
Widget mDrawer(){
  List<String> FirstList = [
    "My Account",
    "Loyalty Program",
    "Vouchers & Offers",
    "My WishList",
    "My Orders",
    "Addresses",
    "Notifications"
  ];
  List<String> SecondList=["Terms & Conditions","Return & Refund Policy","Privacy Policy","Shipping & Delivery","Logout"];

  return  Drawer(
    backgroundColor:ThemeColor,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Image.asset(
                "assets/images/PersonIcon.png",
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Hello",
                  style: Whitebackgroundstyle.copyWith(

                      fontWeight: FontWeight.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Guest",
                  style: Whitebackgroundstyle.copyWith(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                        "0.00 Points",
                        style: Whitebackgroundstyle.copyWith(
                            color: Colors.blue, fontSize: 12),
                      )),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: ListView.builder(
              itemCount: FirstList.length,
              itemBuilder: (context, index) => Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: GestureDetector(
                  onTap: (){
                    if(index==0){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                    }
                    if(index==1){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoyaltyProgramScreen()));
                    }
                    if(index==2){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Vouchers()));
                    }
                    if(index==3){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>WishListScreen()));
                    }
                    if(index==4){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Orderscreen()));
                    }
                    if(index==5){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressScreen()));
                    }
                    if(index==6){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                    }
                  },
                  child: Text(
                    FirstList[index],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
        Divider(),
        SizedBox(
          height: 200,
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView.builder(
              itemCount: SecondList.length,
              itemBuilder: (context, index) => Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                child: GestureDetector(
                  onTap: (){
                    if(index==0){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsCondition()));
                    }
                    if(index==1){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ReturnRefund()));
                    }
                    if(index==2){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PrivacyPolicy()));
                    }
                    if(index==3){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ShippingDelivery()));
                    }
                    if(index==4){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
                    }
                  },
                  child: Text(
                    SecondList[index],
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
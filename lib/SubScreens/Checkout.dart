import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/Utilities/Controller.dart';

import '../TextStyles/TextStyles.dart';
import '../UI/HomeScreen.dart';
import 'package:get/get.dart';

import '../UI/Profile.dart';
import 'AddToBag.dart';
class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  BagController _bagController=Get.put(BagController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CommonWidgets().AddToCartBottomBar(context, BottomText: "Checkout"),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckoutHeadline(mtitle: "Personal information"),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10,bottom: 5),
              child: Text("Name",style: CheckoutStyle.copyWith(fontSize: 13,color: Colors.grey),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Full Name",
                  hintStyle: TextStyle(
                    color: Colors.black.withAlpha(100),
                    fontWeight: FontWeight.w500
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.shade200
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade200
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.shade200
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.shade200
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10,bottom: 5),
              child: Text("Phone Number",style: CheckoutStyle.copyWith(fontSize: 13,color: Colors.grey),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "+9770000000000",
                  hintStyle: TextStyle(
                      color: Colors.black.withAlpha(100),
                      fontWeight: FontWeight.w500
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.shade200
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.shade200
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.shade200
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.shade200
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10,bottom: 5),
              child: Text("Email Address",style: CheckoutStyle.copyWith(fontSize: 13,color: Colors.grey),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "itharimedical@gmail.com",
                  hintStyle: TextStyle(
                      color: Colors.black.withAlpha(100),
                      fontWeight: FontWeight.w500
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: true,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.shade200
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.shade200
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.shade200
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey.shade200
                    ),
                    borderRadius: BorderRadius.circular(15),

                  ),
                ),
              ),
            ),

        Padding(
          padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
          child: Divider(),
        ),

            CheckoutHeadline(mtitle: "Shipping address"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(15)

                ),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Text("+ Add new address",style: CheckoutStyle.copyWith(color: Colors.black.withAlpha(200),fontSize: 14,),textAlign: TextAlign.center,),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 15,right: 15),
              child: Divider(),
            ),
            CheckoutHeadline(mtitle: "Payment method"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 15,
                              backgroundColor: Colors.grey.withAlpha(150),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: VerticalDivider(
                                color: Colors.grey.withAlpha(100),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Cash on delivery",style: CheckoutStyle.copyWith(color: Colors.black),),
                                  Text("pay with cash at the time of delivery",style: BottomNavigationstyle,)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 15,
                              backgroundColor: Colors.grey.withAlpha(150),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: VerticalDivider(
                                color: Colors.grey.withAlpha(100),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Esewa",style: CheckoutStyle.copyWith(color: Colors.black),),
                                  Text("pay with Esewa",style: BottomNavigationstyle,)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 15,
                              backgroundColor: Colors.grey.withAlpha(150),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: VerticalDivider(
                                color: Colors.grey.withAlpha(100),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Khalti",style: CheckoutStyle.copyWith(color: Colors.black),),
                                  Text("pay with Khalti",style: BottomNavigationstyle,)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              maxRadius: 15,
                              backgroundColor: Colors.grey.withAlpha(150),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: VerticalDivider(
                                color: Colors.grey.withAlpha(100),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Card Payment",style: CheckoutStyle.copyWith(color: Colors.black),),
                                  Text("pay with debit or credit cards",style: BottomNavigationstyle,)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
TextStyle CheckoutStyle=TextStyle(
    fontWeight: FontWeight.w900,
    fontSize: 15,
    color: Colors.black.withAlpha(180)
);
Widget CheckoutHeadline({required String mtitle}){
  return Padding(
    padding: const EdgeInsets.only(top: 15,left: 10),
    child: Text("$mtitle",style:CheckoutStyle ),
  );
}

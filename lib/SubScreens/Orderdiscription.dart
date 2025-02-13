import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shopifyclone/CommonWidgets/CommonInProductDescription.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/SubScreens/AddToBag.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';
import 'package:shopifyclone/Utilities/Controller.dart';
import 'package:shopifyclone/Widgets/Home/HomeWidgets.dart';

import 'OrderScreen.dart';
class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  BagController _bagController=Get.put(BagController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonWidgets().ComAppbar(context),
      ),
      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Firstthreecontainers(),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 120,
                          child: Text("January 12, 2025 5:01 pm")),
                      CircleAvatar(
                         backgroundColor: ThemeColor,
                        maxRadius: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:15,right: 10 ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Cancelled",style: Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),),
                            SizedBox(
                                width: MediaQuery.of(context).size.width*0.50,
                                child: Text("Order cancelled; refund processed. Apologies for any inconvience.",style: Discriptionstyle.copyWith(color: Colors.black.withAlpha(200)),))
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 120,
                          child: Text("January 12, 2025 5:01 pm")),
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade200,
                        maxRadius: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:15,right: 10 ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Processing",style: Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),),
                            SizedBox(
                                width: MediaQuery.of(context).size.width*0.50,
                                child: Text("We're preparing your order for shipment.",style: Discriptionstyle.copyWith(color: Colors.black.withAlpha(200)),))
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10),
              child: Text("Order Details",style: Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)) ,
                child: Container(
                  color: Colors.white38,
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 15),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_outlined,color: Colors.grey,size: 25,),
                            Text("Ithari Medical, Ithari",style: BottomNavigationstyle.copyWith(fontSize: 13,fontWeight: FontWeight.normal),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15,top: 15),
                        child: Row(
                          children: [
                            Icon(Icons.call,color: Colors.grey,size: 25,),
                            Text("+9779800000000",style: BottomNavigationstyle.copyWith(fontSize: 13,fontWeight: FontWeight.normal),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10),
              child: Text("Order Summary",style: Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 15),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)) ,
                child: Container(
                  color: Colors.white38,
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  child: Column(
                    children: [
                      Ordersummary(Category: "Sub Total", price: "NRP.150"),
                      Ordersummary(Category: "Shipping", price: "NRP.100"),
                      Ordersummary(Category: "App User Discount", price: "0"),
                      Ordersummary(Category: "Total", price: "NRP.240"),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15,top: 10),
              child: Text("Order Items",style: Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 15),),
            ),
           Padding(
             padding: const EdgeInsets.only(left: 15,right: 15,bottom: 50,top: 5),
             child: Card(
               elevation: 2,
               child: Container(
                 height: 100,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                   color: Colors.white38,
                   borderRadius: BorderRadius.circular(15)
                 ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ClipRRect(
                           borderRadius: BorderRadius.circular(15),
                           child: SizedBox(
                               height: 150,
                               child: Image.asset("assets/images/HomeScreen/Tresme.png",fit: BoxFit.fill,))),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left: 15),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(
                             width:200,
                               child: Text("Tresme Conditioner Intense Repair",style: Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 15),)),
                           Row(
                             children: [
                               Text("Price: "),
                               Text("NRP.150",style:Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 12),)
                             ],
                           ),
                           Row(
                             children: [
                               Text("Subtotal: "),
                               Text("NRP.150",style:Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 12),)
                             ],
                           ),
                         ],
                       ),
                     ),
                     Center(
                       child:
                       Container(
                         height: 18,
                         width: 30,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(5),
                           border: Border.all(
                             color: Colors.black
                           )
                         ),
                         child: Center(
                           child: Text("×1",style: Whitebackgroundstyle.copyWith(color: Colors.black,fontSize: 13),),
                         ),
                       ),
                     )
                   ],
                 ),
               ),
             ),
           )
        
          ],
        ),
      ),
    );
  }
  Widget Firstthreecontainers(){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 25),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: ThemeColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15,top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order ID: #5942863",style: Whitebackgroundstyle.copyWith(fontSize: 18),),
                  Text("January 12, 2025 4:58 PM",style: Whitebackgroundstyle.copyWith(fontSize: 12,fontWeight: FontWeight.w500),)
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color:Color(0xfff2f3f4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset("assets/images/OrderDetails/PaymentMethod.png",height: 40,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Payment Method",style: Whitebackgroundstyle.copyWith(fontSize: 17,color: Colors.black.withAlpha(180),fontWeight: FontWeight.w500),),
                      Text("COD",style: Whitebackgroundstyle.copyWith(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.blue),)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color:Color(0xfff2f3f4),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15,top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Image.asset("assets/images/OrderDetails/Status.png",height: 40,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Status",style: Whitebackgroundstyle.copyWith(fontSize: 17,color: Colors.black.withAlpha(180),fontWeight: FontWeight.w500),),
                      Text("CANCELLED",style: Whitebackgroundstyle.copyWith(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.blue),)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
  Widget Ordersummary({required String Category,required String price}){
    return Padding(
      padding: const EdgeInsets.only(left: 15,top: 15,right: 15),
      child: Row(
        children: [
          Text(Category,style:Category.toString()=="Total"?BottomNavigationstyle.copyWith(fontSize: 13,fontWeight: FontWeight.w800,color: Colors.black.withAlpha(200)):BottomNavigationstyle.copyWith(fontSize: 13,fontWeight: FontWeight.normal),),
          Spacer(),
          Text(price,style: Category.toString()=="Total"?BottomNavigationstyle.copyWith(fontSize: 13,fontWeight: FontWeight.w800,color: Colors.black.withAlpha(200)):BottomNavigationstyle.copyWith(fontSize: 13,fontWeight: FontWeight.normal)),

        ],
      ),
    );
  }

}

import 'package:flutter/material.dart';
import 'package:shopifyclone/CommonWidgets/Widegts.dart';
import 'package:shopifyclone/TextStyles/TextStyles.dart';

import '../Widgets/Home/HomeWidgets.dart';
class ReturnRefund extends StatefulWidget {
  const ReturnRefund({super.key});

  @override
  State<ReturnRefund> createState() => _ReturnRefundState();
}

class _ReturnRefundState extends State<ReturnRefund> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CommonWidgets().ComAppbar(context),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(

              child:Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Text("Return & Refund",style: Whitebackgroundstyle.copyWith(color: Colors.black.withAlpha(150),fontSize: 20),),
              )),
          Center(child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Text("Our Return and Refund Policy ensures a hassle-free experience for our customers. If you are not completely satisfied with your purchase, you may request a return or refund within [X] days of receiving the product. To be eligible, the item must be unused, in its original packaging, and accompanied by a valid proof of purchase. Refunds will be processed using the original payment method, and return shipping costs may apply unless the product is defective or incorrect. Certain items, such as digital products or personalized items, may not be eligible for returns. For further assistance, please contact our customer support team.",style: BottomNavigationstyle,),
          ))
        ],
      ),
    );
  }
}
